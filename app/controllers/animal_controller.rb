class AnimalController < ApplicationController

  def main_page
    render({ :template => "game_templates/main_page"})
  end
  
end
