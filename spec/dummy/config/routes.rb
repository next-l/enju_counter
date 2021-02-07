Rails.application.routes.draw do
  devise_for :users
  mount EnjuCounter::Engine => "/enju_counter"
end
