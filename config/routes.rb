Rails.application.routes.draw do
  get '/stocks', to: 'stocks#index'
  root to: 'blogs#index'
  get 'blogs/index'
  get '/blogs', to: 'blogs#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :contacts, only: %i[new create]
end
