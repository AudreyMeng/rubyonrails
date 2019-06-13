Rails.application.routes.draw do
  resources :questions
  resources :models
  root 'home#index'
  get '/about' =>  'home#about'
  post '/questions' => 'home#temp'
  post '/answers' => 'home#temp'
  get '/questions/:id' => 'home#question'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
