Rails.application.routes.draw do
  resources :feedbacks, only: %i(new)

  root "feedbacks#new"
end
