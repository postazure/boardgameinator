require 'rails_helper'

describe Boardgame do
  describe 'scopes' do
    describe '#name_includes' do
      let!(:catan) { FactoryGirl.create(:boardgame, name: 'Settlers of Catan')}

      it 'returns objects where the name includes NAME' do
        db_record = Boardgame.name_includes('catan').first
        expect(db_record.name).to eq catan.name
      end
    end
  end
end