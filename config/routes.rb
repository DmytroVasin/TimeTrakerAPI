Rails.application.routes.draw do
  resource :tray_stories, only: :show

  resources :stories do
    resources :tasks
  end

  resources :periods
  resource :graph
end
