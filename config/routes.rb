Ol2::Application.routes.draw do
  #Usr Controller
  match  "/manage" => "usr#manage", as: :manage
  match   "/profile" => "usr#profile", as: :profile
  get   "/staff" => "usr#staff", as: :staff
  match "manage/:id" => "subjects#edit", as: :edit_subject
  match "/profile/edit" => "devise/registrations#edit", as: :profile_edit
  #Root Page
  authenticated :user do
    root to: "usr#manage"
  end
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
  resources :subjects, except: :edit

  #Pages Controller
  match "/contact" => "pages#contact", as: :contact
  match "/opportunities"=>"pages#opportunities", as: :opportunities
  match "/partners"=> "pages#partners", as: :partners
  match "/presskit"=>"pages#presskit", as: :presskit
  match "/team"=> "pages#team", as: :team
  match "/privacy"=> "pages#privacy", as: :privacy
end
