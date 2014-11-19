class OrderMailer < ActionMailer::Base
  default from: "natalie@buttermeupsweets.com"

  def order_confirmation_email(order)
    email = order.customer_contact_info
    @customer_name = order.customer_name
    @items = order.item_orders
    @total = order.order_total
    mail(to: email, cc: "natalie@buttermeupsweets.com", subject: "Order Confirmation from Butter Me Up Sweets")
  end
end
