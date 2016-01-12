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
      if cookies[:klient] != nil
        redirect_to "/potwierdzenie"
      end
    end
  end

  def confirm
    if cookies[:klient] != nil
      @order = Order.new
      @order.client_id = cookies[:klient]
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
