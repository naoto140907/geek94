Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  resources :tweets
  get "quizzes/start", to: "quizzes#start"
  get "quizzes/result", to: "quizzes#result"
  get "quizzes/:index", to: "quizzes#show", as: :quiz
  post "quizzes/answer", to: "quizzes#answer"
  root 'hello#index' 
  # Defines the root path route ("/")
  # root "posts#index"
end
