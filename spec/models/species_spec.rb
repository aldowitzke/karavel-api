require 'rails_helper'

RSpec.describe Species, type: :model do
  context 'Create Species' do 
    it 'ensures name presence validation' do
      species = Species.new.save
      expect(species).to eq(false)
    end

    it 'ensures name uniqueness validation' do
      species1 = Species.new(name: "Caupi").save
      species2 = Species.new(name: "Caupi").save
      expect(species2).to eq(false)
    end
  end
end