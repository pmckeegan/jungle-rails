require 'rails_helper'

RSpec.describe Product, type: :model do

it "is valid with valid attributes" do
  @category = Category.new
  @category.name = 'Electronics'
  @category.save
  @product = Product.new
  @product.name = 'mouse'
  @product.price = '11.99'
  @product.quantity = 6
  @product.category_id = @category.id
  expect(@product).to be_valid
end

    # it "should have a name" do
    #   @category = Category.new
    #   @category.name = 'Electronics'
    #   @category.save
    #   @product = Product.new
    #   @product.name = 'car'
    #   @product.price = '11.99'
    #   @product.quantity = 6
    #   @product.category_id = @category.id
    #   expect(@product).to be_valid
    # end

    # it "should have a price" do
    #   @category = Category.new
    #   @category.name = 'Electronics'
    #   @category.save
    #   @product = Product.new
    #   @product.name = 'mouse'
    #   @product.price = nil
    #   @product.quantity = 6
    #   @product.category_id = @category.id
    #   expect(@product).to be_valid
    # end
    
    # it "should have a quantity" do
    #   @category = Category.new
    #   @category.name = 'Electronics'
    #   @category.save
    #   @product = Product.new
    #   @product.name = 'mouse'
    #   @product.price = '11.99'
    #   @product.quantity = nil
    #   @product.category_id = @category.id
    #   expect(@product).to be_valid
    # end


    it "should have a category" do
      @category = Category.new
      @category.name = 'Electronics'
      @category.save
      expect(@category).to be_valid
    end
  end