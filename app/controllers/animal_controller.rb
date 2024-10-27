class AnimalController < ApplicationController

  def square
    render({ :template => "game_templates/new_square_calc"})
  end
  


end
