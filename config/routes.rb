Rails.application.routes.draw do
  get("/", {:controller => "square", :action => "square_new"})
  
  get("/square/new", {:controller => "square", :action => "square_new"})
  get("/square/results", {:controller => "square", :action => "get_result"})

  get("/square_root/new", {:controller => "square_root", :action => "new"})
  get("/square_root/results", {:controller => "square_root", :action => "get_result"})

  get("/payment/new", {:controller => "payment", :action => "new"})
  get("/payment/results", {:controller => "payment", :action => "get_result"})

  get("random/new", {:controller => "random", :action => "new"})
  get("/random/results", {:controller => "random", :action => "get_result"})
end
