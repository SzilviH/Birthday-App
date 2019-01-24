require 'user'

describe User do
  subject(:haruki) { User.new('Haruki', "26", "1") }

  describe '#name' do
    it 'returns the users name' do
      expect(haruki.name).to eq 'Haruki'
    end
  end

  describe '#birthday' do
    it 'returns the users next birthday' do
      expect(haruki.birthday).to eq (Date.today + 2)
    end
  end

  describe '#days_until_bday' do
    it 'returns number of days until users next birthday' do
      expect(haruki.days_until_bday).to eq 2
    end
  end
end
