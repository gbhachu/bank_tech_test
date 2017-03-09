require './lib/bank_account'

describe Bank do

  before(:each) do
    @bank = Bank.new
  end

  describe '#balance' do
    it 'returns current balance' do
      expect(@bank.balance).to be_an Integer
    end
    it 'has an initial bank balance of 0' do
      expect(@bank.balance).to eq 0
    end
  end
end
