class OrderMailer < ActionMailer::Base
  default from: "natalie@buttermeupsweets.com"

  def order_confirmation_email(order)
    email = order.customer_contact_info
    @customer_name = order.customer_name
    @items = order.items
    @total = order.order_total
    mail(to: email, subject: "Order Confirmation from Butter Me Up Sweets")
  end

  def order_confirmation_email_natalie(order)
    @customer_name = order.customer_name
    @items = order.items
    @total = order.order_total
    mail(to: "natalie@buttermeupsweets.com", subject: "Order made on Butter Me Up Sweets")
  end
end
