class PaymentController < ApplicationController
  def new
    render({:template => "pages_templates/payment"})
  end

  def get_result
    @annual_percentage_rate = params.fetch("user_apr").to_f
    monthly_interest_rate = @annual_percentage_rate/100/12
  
    @years_to_pay = params.fetch("user_years").to_i
    number_of_payments = @years_to_pay*12
  
    @principal = params.fetch("user_pv").to_f
  
    @result = @principal * (monthly_interest_rate * (1 + monthly_interest_rate)**number_of_payments) / ((1 + monthly_interest_rate)**number_of_payments - 1)
    
    render({:template => "pages_templates/payment_result"})
  end
end
