require 'rails_helper'

RSpec.describe ExportationStandard, type: :model do
  context 'Create Exportation Standard' do 
    it 'ensures value presence validation' do
      standard = ExportationStandard.new.save
      expect(standard).to eq(false)
    end
    it 'ensures value float validation' do
      value = ExportationStandard.new(value: "You shall not pass!").save
      expect(value).to eq(false)
    end
  end
end