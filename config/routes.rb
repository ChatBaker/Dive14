Rails.application.routes.draw do
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :insta
  root 'top#index'
  devise_for :users, controllers: {
      registrations: "users/registrations",
      omniauth_callbacks: "users/omniauth_callbacks"
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
