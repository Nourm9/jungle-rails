class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @products_count_num = Product.count
    @categories_count_num = Category.count
  end
end
