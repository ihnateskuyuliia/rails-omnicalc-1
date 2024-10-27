Rails.application.routes.draw do
  get("/square/new", { :controller => "animal", :action => "square" })
end
