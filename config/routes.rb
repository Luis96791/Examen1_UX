Clima::Application.routes.draw do
  resources :locations do
  	resources :recordings
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
