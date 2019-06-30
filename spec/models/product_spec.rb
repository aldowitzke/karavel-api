require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'Create Product' do 
    it 'ensures name presence validation' do
      product = Product.new.save
      expect(product).to eq(false)
    end
    it 'ensures name uniqueness presence validation' do
      bean1 = Product.new(name: "bean").save
      bean2 = Product.new(name: "bean").save
      expect(bean2).to eq(false)
    end
  end
end