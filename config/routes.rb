Ol2::Application.routes.draw do
  #Usr Controller
  get "usr/manage"
  get "usr/profile"
  get "usr/staff"
  match "usr/manage/:id" => "subjects#edit"
  
  #Root Page
  root to: "pages#index"
  
  #User Authentication Solution
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}

  #Resources
  resources :questionanswers
  resources :summaries
  resources :checkpoints
  resources :lessons do 
    collection {post :sort}
  end
  resources :topics
  resources :subjects
  
  #Pages Controller
  get "pages/index"
  get "pages/contact"
  get "pages/opportunities"
  get "pages/partners"
  get "pages/presskit"
  get "pages/team"
end
