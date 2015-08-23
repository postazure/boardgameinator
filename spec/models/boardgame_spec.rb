require 'rails_helper'

describe Boardgame do
  describe 'scopes' do
    describe '#name_includes' do
      let!(:catan) { FactoryGirl.create(:boardgame, name: 'Settlers of Catan')}
      let!(:other_game) { FactoryGirl.create(:boardgame, name: 'Micro Troncat')}

      it 'it should find names that contain words' do
        db_record = Boardgame.name_includes('catan').first
        expect(db_record.name).to eq catan.name
      end

      it 'should NOT find components of other names' do
        # Search Term: On. Ok => 'Only Domination', 'On and Off'. NOT Ok => 'Action', 'Micron Game'
        # Can start with term, but term cannot be nested in a word
        db_records = Boardgame.name_includes('cat')

        expect(db_records).to include catan
        expect(db_records).not_to include other_game
      end
    end
  end
end