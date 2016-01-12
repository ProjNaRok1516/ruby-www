class ShoppingCartController < ApplicationController
  def index
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
end
