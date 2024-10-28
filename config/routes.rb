Rails.application.routes.draw do

  get("/", { :controller => "animal", :action => "main_page" })

  get("/square/new", { :controller => "animal", :action => "square_new" })
  get("/square/results", { :controller => "animal", :action => "square_results" })

  get("/square_root/new", { :controller => "animal", :action => "root_new" })
  get("/square_root/results", { :controller => "animal", :action => "root_results" })

  get("/payment/new", { :controller => "animal", :action => "payment_new" })
  get("/payment/results", { :controller => "animal", :action => "payment_results" })

  get("/random/new", { :controller => "animal", :action => "random_new" })
  get("/random/results", { :controller => "animal", :action => "random_results" })

end
