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

end
