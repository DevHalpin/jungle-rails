require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      @category = Category.new(name: 'Test')
      @product = Product.new(name: 'Test', price: 10, quantity: 2, category: @category)
      expect(@category).to be_valid
      expect(@product).to be_valid
    end
  end
end
