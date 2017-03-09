class Client

  attr_reader :balance, :transactions

  def initialize
    @transactions = []
    @balance = 0
  end


  def minus_balance sum
    @balance -= sum
  end

  def plus_balance sum
    @balance += sum
  end
end
