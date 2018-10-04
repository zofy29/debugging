class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin!

  def index
    @products = Product.all
  end
end
