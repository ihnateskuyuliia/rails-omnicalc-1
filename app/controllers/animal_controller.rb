class AnimalController < ApplicationController

  def main_page
    render({ :template => "game_templates/main_page"})
  end
  
  def square_new
    render({ :template => "game_templates/new_square_calc"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "game_templates/new_square_results"})
  end

end
