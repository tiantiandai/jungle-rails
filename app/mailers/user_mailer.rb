class UserMailer < ApplicationMailer
    default from: 'no-reply@jungle.com'
    def order_receipt_email(order)
        @order = order
        mail(to: @order.email, subject: @order.id.to_s)
    end
end
