class OrderReport
  def initialize(customer:, total:)
    @customer = customer
    @total = total
  end

  def invoice
    puts "Invoice"
    puts @customer
    puts @total
  end

  def bill_of_lading
    puts "BOL"
    puts @customer
    puts "Shipping Label..."
  end
end

order = OrderReport.new(customer: "Google", total: 100)
order.invoice
order.bill_of_lading 