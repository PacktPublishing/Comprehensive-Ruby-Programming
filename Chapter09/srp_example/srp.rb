class Invoice
  def initialize(customer:, state:, total:)
    @customer = customer
    @state = state
    @total = total
  end

  def details
    "Customer: #{@customer}, Total: #{@total}"
  end

  def sales_tax
    case @state
    when 'AZ' then 5.5
    when 'TX' then 3.2
    when 'CA' then 8.7
    end
  end

  def email_invoice
    puts "Emailing invoice..."
    puts details
  end
end

invoice = Invoice.new(customer: "Google", state: "AZ", total: 100)
puts invoice.sales_tax
invoice.email_invoice 