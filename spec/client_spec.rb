require './lib/client'

describe Client do

  let(:client) {Client.new}
  it {is_expected.to respond_to :minus_balance}
  it {is_expected.to respond_to :plus_balance}

  it "initializes with an account that is empty" do
    expect(client.transactions).to eq []
  end

  it "initializes with a balance of zero" do
    expect(client.balance).to eq 0
  end

  describe '#minus_balance' do
    it "subtracts the sum from the balance" do
      client.minus_balance 50
      expect(client.balance).to eq -50
    end
  end
  describe '#plus_balance' do
    it "subtracts the sum from the balance" do
      client.plus_balance 50
      expect(client.balance).to eq 50
    end
  end
end
