class AnimalController < ApplicationController

  #MAIN PAGE (OPENS AT SQUARE BUT WITH NO /SQUARE/NEW)
  def main_page
    render({ :template => "calc_templates/main_page"})
  end
  
  #SQUARE
  def square_new
    render({ :template => "calc_templates/new_square_calc"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "calc_templates/new_square_results"})
  end

  #ROOT
  def root_new
    render({ :template => "calc_templates/root_calc"})
  end

  def root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num)
    render({ :template => "calc_templates/root_results"})
  end 

  #PAYMENT 
  def payment_new
    render({ :template => "calc_templates/payment_calc"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
  @r = @apr / 100 / 12
  @years = params.fetch("user_years").to_i
  @value = params.fetch("user_pv").to_f
  
  # Calculate the number of monthly periods
  @n = @years * 12

  # Organize the numerator and denominator according to the formula
  @numerator = @r * @value
  @denominator = 1 - (1 + @r) ** -@n

  # Calculate the monthly payment (P)
  @monthly_payment = @numerator / @denominator

  #Format the Principal Value
  @value_formatted = @value.to_fs(:currency)
  
  # Format the result as currency
  @formatted_payment = @monthly_payment.to_fs(:currency)

  #Format the APR
  @apr_formatted = @apr.to_fs(:percentage, {:precision => 4})
    render({ :template => "calc_templates/payment_results"})
  end

end
