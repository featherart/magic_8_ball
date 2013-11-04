Magic8Ball::Application.routes.draw do
  get "questions/index"

  get "questions/create"

  root to: "questions#index"

  resources :answers, :questions
end
