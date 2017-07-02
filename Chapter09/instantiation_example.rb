class Invoice
  attr_accessor:customer, :total

  def summary
    puts "Invoice:"
    puts "Customer: #{customer}"
    puts "Total: #{total}"
  end
end

invoice = Invoice.new
invoice.customer = "Google"
invoice.total = 500
invoice.summary 