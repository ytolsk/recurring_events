Rails.application.routes.draw do
  resources :events, except: [:new, :edit]

  match '/event' => 'event#create', via: :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
