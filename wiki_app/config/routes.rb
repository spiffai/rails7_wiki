Rails.application.routes.draw do
  resources :wiki_posts
  namespace :wiki_posts do
    get 'example'
  end
  namespace :welcome do
    get 'index'
    get 'about'
  end
  get "up" => "rails/health#show", as: :rails_health_check
  get '/about', to: redirect('/welcome/about')
  root "welcome#index"
end
