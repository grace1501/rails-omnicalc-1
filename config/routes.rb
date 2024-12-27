Rails.application.routes.draw do
  get("/", {:controller => "square", :action => "square_new"})
  
  get("/square/new", {:controller => "square", :action => "square_new"})

  get("/square/results", {:controller => "square", :action => "get_result"})
end
