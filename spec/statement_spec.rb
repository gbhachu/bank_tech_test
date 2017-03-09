require './lib/statement'

describe Statement do
  let(:statement) {Statement.new}
  let(:test_account) {Client.new}
  let(:transaction) {Bank.new}
  let(:date){ Time.now.strftime("%d/%m/%Y")}

  describe "#print_statement" do
    it "prints a statement" do
      transaction.deposit(test_account, 1000)
      transaction.deposit(test_account, 2000)
      transaction.withdraw(test_account, 500)
      expect(statement.print_statement(test_account)).to eq "date       ||   credit   ||   debit   ||   balance\n#{date}   ||   1000   ||   1000\n#{date}   ||   2000   ||   3000\n#{date}   ||   500   ||   2500\n"
    end
  end
end
