require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @category = Category.new(name: 'Flowers')
    @category.save
  end

 describe 'Validations' do


    #  :category validation
    it "contains category" do
      @category = Category.new({name: 'Kitchen & Dining'})
      @product = Product.new({name: 'Mugs', price: 1000, quantity: 100, category: @category})
      @product.save
      expect(@product.category.name).to eq('Kitchen & Dining')
    end

    #  :name validation
    it 'has a name' do
      @category = Category.new({name: 'Kitchen & Dining'})
      @product = Product.new({name: 'Mugs', price: 1000, quantity: 100, category: @category})
      @product.save
      expect(@product.name).to eq('Mugs')
    end

    #  :price validation
    it 'contains price' do
      @category = Category.new({name: 'Kitchen & Dining'})
      @product = Product.new({name: 'Mugs', price: 1000, quantity: 100, category: @category})
      @product.save
      expect(@product.price).to eq(1000)
    end

    #  :quantity validation
    it 'contains quantity' do
      @category = Category.new({name: 'Kitchen & Dining'})
      @product = Product.new({name: 'Mugs', price: 1000, quantity: 100, category: @category})
      @product.save
      expect(@product.quantity).to eq(100)
    end
  end
end