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
      expect(statement.print_statement(test_account)).to eq "date || credit || debit || balance\n#{date}||1000.00 || || 1000.00\n#{date}||2000.00|| || 3000.00\n#{date}|| ||500.00 || 2500.00\n"
    end
  end
  describe "#format_statement" do
    it "formats the statement to 2 decimal places" do
      transaction.deposit(test_account, 60)
      expect(statement.format_statement(test_account)).to include [["60.00"]]
    end
  end
end
