Rails.application.routes.draw do
  root 'games#new'
  get 'new', to: 'games#new'
  post 'score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


