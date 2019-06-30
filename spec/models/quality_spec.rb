require 'rails_helper'

RSpec.describe Quality, type: :model do
  context 'Create Quality' do 
    it 'ensures name presence validation' do
      quality = Quality.new.save
      expect(quality).to eq(false)
    end
    it 'ensures name uniqueness presence validation' do
      humidity1 = Quality.new(name: "humidity").save
      humidity2 = Quality.new(name: "humidity").save
      expect(humidity2).to eq(false)
    end
    it 'ensures name minimum length validation' do
      quality = Quality.new(name: "ab").save
      expect(quality).to eq(false)
    end
  end
end