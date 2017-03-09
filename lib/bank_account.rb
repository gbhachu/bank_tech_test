class Bank

  attr_reader :balance


  def initialize
    @balance = 0
  end

  def deposit(amount)
     (amount >= 0) ? (@balance += amount) : raise('You can not deposit a negative amount')
     self.data(amount, 'deposit')
  end

  def data(amount, type)
  end
end
