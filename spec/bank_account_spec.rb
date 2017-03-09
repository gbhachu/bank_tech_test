require './lib/bank_account'

describe Bank do
  let(:transaction) {Bank.new}
  let(:test_account) {instance_spy("Client")}
  let(:date){ Time.now.strftime("%d/%m/%Y")}
  it {is_expected.to respond_to :deposit}
  it {is_expected.to respond_to :withdraw}
  describe '#credit' do
    # it "deposits money to an account" do
    #   transaction.deposit(test_account, 10)
    #   expect(test_account.account).to eq [10]
    # end
    it "deposits money to the account and stores the date" do
      transaction.deposit(test_account,10)
      expect(test_account).to have_recieved(:deposit).with(10)
      # expect(test_account.account).to eq [[date, 10,"",10]]
    end
  end
  describe '#debit' do
    it "withdrawls money to the account and stores the date" do
      transaction.withdraw(test_account, 10)
      # expect(test_account.account).to eq [[date,"", 10, -10]]
    end
  end
end
