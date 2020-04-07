RSpec.describe 'Product', type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should have all the fields' do
      @category = Category.new({:name => 'cname'})
      @product = Product.new({:name  => 'pname', :price => 5, :quantity => 5, :category => @category })

      # :name,
      # :description,
      # :category_id,
      # :quantity,
      # :image,
      # :price
      # we use bang here b/c we want our spec to fail if save fails (due to validations)
      # we are not testing for successful save so we have to assume it will be successful
      @product.save!
      
      expect(@product.name).to be_present
      expect(@product.price).to be_present
      expect(@product.quantity).to be_present
      expect(@product.category).to be_present
    end
  end
end