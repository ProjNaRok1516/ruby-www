class ShoppingCartController < ApplicationController
  def index
    @koszyk = Order.last
    jedwab = Material.new
    jedwab.name = 'Jedwab'
    jedwab.price_per_m2 = 10.0
    jedwab.save
    dokostek = Style.new
    dokostek.name = 'Stylowa do kostek'
    dokostek.material_amount = 2
    dokostek.save
    nowykoszyk = Order.new
    nowykoszyk.save
    supersuknia = Dress.new
    supersuknia.material_id = jedwab.id
    supersuknia.style_id = dokostek.id
    supersuknia.order_id = nowykoszyk.id
    supersuknia.save
  end
end
