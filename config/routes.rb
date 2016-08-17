# peaceful-dawn-52251.herokuapp.com
Rails.application.routes.draw do
  resources :stories do
    resources :tasks
  end

  resources :periods
  resource :graph
end
