class OrderController < ApplicationController
  def new
	@wszystkie_style = Style.all
	@wszystkie_materialy = Material.all

    @dress = Dress.new()

	if params[:dress] != nil
      @dress = Dress.new(order_params)
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
    
  end

  def confirm
    @dresses = []
    pozycje = cookies[:zamowienie]
    if pozycje != nil
      pozycje = pozycje.split(';')
      pozycje.each do |pozycja|
        numery = pozycja.split(',')
        if numery.count == 2 and numery[0].to_i > 0 and numery[1].to_i > 0
          suknia = Dress.new()
          suknia.style_id = numery[0].to_i
          suknia.material_id = numery[1].to_i
          if suknia.style != nil and suknia.material != nil
            suknia.name = "#{suknia.style.name} - #{suknia.material.name}"
            suknia.cost = (suknia.style.material_amount * suknia.material.price_per_m2).round(2)
            @dresses << suknia
          end
        end
      end
    end
  end

  def order_params
    params.require(:dress).permit(:style_id, :material_id)
  end
end
