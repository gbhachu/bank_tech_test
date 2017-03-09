class Statement

  HEADINGS = "date       ||   credit   ||   debit   ||   balance"

  def print_statement client


   statement = client.transactions.map do |x|
  "#{x[0]}|| #{x[1]}|| #{x[2]}|| #{x[3]}\n"
   end
    "#{HEADINGS}\n#{statement.join("")}"
 end

end
