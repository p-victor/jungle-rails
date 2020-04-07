require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should have all the fields' do
      @category = Category.new({:name => 'cname'})
      @product = Product.new({:name  => nil, :price => 5, :quantity => 5, :category => @category })

      @product.save!
      
      expect(@product.name).to be_present
    end
    it 'should have all the fields' do
      @category = Category.new({:name => 'cname'})
      @product = Product.new({:name  => 'pname', :price => nil, :quantity => 5, :category => @category })

      @product.save!
      
      expect(@product.price).to be_present
    end
    it 'should have all the fields' do
      @category = Category.new({:name => 'cname'})
      @product = Product.new({:name  => 'pname', :price => 5, :quantity => nil, :category => @category })

      @product.save!
      
      expect(@product.quantity).to be_present
    end
    it 'should have all the fields' do
      @product = Product.new({:name  => 'pname', :price => 5, :quantity => 5, :category => nil })

      @product.save!
      
      expect(@product.category).to be_present
    end
  end
end
