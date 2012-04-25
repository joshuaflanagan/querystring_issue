class ProductsController < ApplicationController
  def index
    @products = Product.all
    @decorated_products = Product.all.map{|p| ProductDecorator.new(p)}
  end
end

class ProductDecorator < DelegateClass(Product)

end
