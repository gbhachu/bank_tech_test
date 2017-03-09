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

  describe '#deposit' do
    it 'increases the balance by the amount stated (1000)' do
      expect{@bank.deposit(1000)}.to change{@bank.balance}.by(1000)
    end
    it 'does not increase the balance if 0 is deposited' do
      expect{@bank.deposit(0)}.to change{@bank.balance}.by(0)
    end
    it 'does not accept accept negative numbers' do
      expect{@bank.deposit(-1)}.to raise_error "You can not deposit a negative amount"
    end
  end
end
