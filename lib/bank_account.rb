class Bank

  # attr_reader :balance
  # attr_reader :transactions
  # attr_reader :current_transaction

DATE = Time.now.strftime("%d/%m/%Y")


  def deposit(client, amount)
     client.plus_balance amount
     client.transactions.push([DATE, amount,"", client.balance])
  end

  def withdraw(client, amount)
    client.minus_balance amount
    client.transactions.push([DATE, amount,"",client.balance])
  end



    # def data(amount, type)
    #   @current_transaction = {}
    #   @current_transaction[:date] = Time.now.strftime("%d/%m/%Y")
    #   @current_transaction[:type] = type
    #   @current_transaction[:amount] = amount
    #   @current_transaction[:balance] = @balance
    #   @transactions << @current_transaction
    #   @transactions
    # end


end
