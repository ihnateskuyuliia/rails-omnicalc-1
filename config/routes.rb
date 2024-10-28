Rails.application.routes.draw do

  get("/", { :controller => "animal", :action => "main_page" })
  #get("/square/new", { :controller => "animal", :action => "square" })
end
