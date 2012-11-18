Ol2::Application.routes.draw do
  #Usr Controller
  get   "usr/manage"
  get   "usr/profile"
  get   "usr/staff"
  match "usr/manage/:id" => "subjects#edit"
  
  #Root Page
  authenticated :user do
    root to: "usr#manage"
  end
  root to: "pages#index"
  
  #User Authentication Solution
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
             controllers: {omniauth_callbacks: "omniauth_callbacks"}
  devise_for :users, :skip => [:sessions]
  as :user do
    get   'login'   => 'devise/sessions#new',     :as => :new_user_session
    post  'login'   => 'devise/sessions#create',  :as => :user_session
    match 'logout'  => 'devise/sessions#destroy', :as => :destroy_user_session,
    :via => Devise.mappings[:user].sign_out_via
  end

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
  get "pages/privacy"

  #Catching 404 Errors
  match "*path" => 'error#handle404'
end
