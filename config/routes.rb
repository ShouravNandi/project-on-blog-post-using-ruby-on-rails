Rails.application.routes.draw do
  root 'blogs#index'
  get 'blogs/index', to: 'blogs#index'
  get 'blogs/about', to: 'blogs#about'
 

  resources :blogs do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
