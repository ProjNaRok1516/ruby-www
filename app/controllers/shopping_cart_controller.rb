class ShoppingCartController < ApplicationController
  def index
    @koszyk = Order.first
  end
end
