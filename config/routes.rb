NestedAttributesBugExmple::Application.routes.draw do
  root :to => 'parents#index'
  
  resources :parents
end
