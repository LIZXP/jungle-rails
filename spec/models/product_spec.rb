require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "check if id is present" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(name: "testProduct", price: "100", quantity: "20", category: @category)
      @product.save
      expect(@product.id).to be_present
    end
    it "validate quantity" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(name: "testProduct", price: "100", quantity: nil, category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end
    it "validate price" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(name: "testProduct", quantity: "20", category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Price is not a number")
    end
    it "validate category" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(name: "testProduct", price: "100", quantity: "20", category: nil)
      @product.save
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
    it "expect product.errors.full_messages to be []" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(name: "testProduct", price: "100", quantity: "20", category: @category)
      @product.save
      expect(@product.errors.full_messages).to eq([])
    end
    it "validate name" do
      @category = Category.new(name: "testCategory")
      @product = Product.new(price: "100", quantity: "20", category: @category)
      @product.save
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
  end
end
