class OrderController < ApplicationController
  def new
	@wszystkie_style = Style.all
	@wszystkie_materialy = Material.all

    @dress = Dress.new()

	if params[:dress] != nil
      @dress = Dress.new(dress_params)
      @dress.validate
      if @dress.errors[:style].any? or @dress.errors[:material].any?
        @errors = @dress.errors.full_messages
      else
        new_order = "#{@dress.style_id},#{@dress.material_id}"
        if cookies[:zamowienie] != nil
          cookies[:zamowienie] = "#{cookies[:zamowienie]};#{new_order}"
        else
          cookies[:zamowienie] = "#{new_order}"
        end
        redirect_to "/koszyk"
      end
    end
  end

  def delivery
    if cookies[:zamowienie] == nil or cookies[:zamowienie].length == 0
      redirect_to "/"
    else
      @wszystkie_style = Style.all
      @wszystkie_materialy = Material.all

      @client = Client.new
      @client.address = Address.new

      if params[:client] != nil
        @client = Client.new(client_params)
        @client.address = Address.new(address_params)
        if(@client.address.flat.length == 0)
          @client.address.flat = nil
        end
        if cookies[:klient] == nil
          @client.save
          if @client.errors.any?
            @errors = @client.errors.full_messages
          else
            cookies[:klient] = @client.id
          end
        end
      end
      if cookies[:klient] != nil
        redirect_to "/potwierdzenie"
      end
    end
  end

  def confirm
    if cookies[:klient] != nil
      @order = Order.new
      @order.client_id = cookies[:klient]
      suknie = []
      suma = 0
      pozycje = cookies[:zamowienie]
      if pozycje != nil
        cookies.delete(:zamowienie)
        pozycje = pozycje.split(';')
        pozycje.each do |pozycja|
          numery = pozycja.split(',')
          if numery.count == 2 and numery[0].to_i > 0 and numery[1].to_i > 0
            suknia = Dress.new()
            suknia.style_id = numery[0].to_i
            suknia.material_id = numery[1].to_i
            suknia.order_id = cookies[:zamowienie_id]
            if suknia.style != nil and suknia.material != nil
              suknia.name = "#{suknia.style.name} - #{suknia.material.name}"
              suknia.cost = (suknia.style.material_amount * suknia.material.price_per_m2).round(2)
              suma = suma + suknia.cost
              suknie << suknia
            end
          end
        end
      end
      @order.dresses = suknie
      @order.total_cost = suma
      @order.status = 0
      @order.data = DateTime.now
      if @order.save
        cookies[:zamowienie_id] = @order.id
        cookies.delete(:klient)
      end
    else
      if cookies[:zamowienie_id] != nil
        @order = Order.find(cookies[:zamowienie_id])
      else
        redirect_to "/"
      end
    end
  end

  def dress_params
    params.require(:dress).permit(:style_id, :material_id)
  end
  def client_params
    params.require(:client).permit(:firstname, :lastname, :phone, :address)
  end
  def address_params
    params.require(:address).permit(:street, :building, :flat, :postalcode, :city)
  end
end
