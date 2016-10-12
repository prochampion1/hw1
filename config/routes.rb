Rails.application.routes.draw do 
  root 'home#index'

  get 'contact_us' => "home#contact_us"
  get 'menu' =>"menu#index"
  
  resources :fooditems
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
