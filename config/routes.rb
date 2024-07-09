Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
end
