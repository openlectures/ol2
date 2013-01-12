Ol2::Application.routes.draw do
  resources :seab_sub_topics, :except => [:new, :show, :index]
  resources :seab_topics, :except=> [:new, :show, :index]

  #Root Page
  root to: "pages#index"

  #User Authentication Solution
  devise_for :users, path_names: {sign_in: "login", registration: "startanadventure", sign_out: "logout"},
             controllers: {omniauth_callbacks: "omniauth_callbacks"}

  #Resources
  resources :checkpoints, except: [:index,:show,:new]
  resources :lessons, except: [:index, :new] do
    collection {post :sort}
  end
  resources :topics, except: [:index, :new] do
    collection {post :sort}
  end
  resources :subjects, except: :new

  # Update Actions
  # match "subjects/import" => "subjects#import", as: :import_subjects
  match "seab_topics/import" => "seab_topics#import", as: :import_seab_topics
  match "seab_sub_topics/import" => "seab_sub_topics#import", as: :import_seab_sub_topics
  match "topics/import" => "topics#import", as: :import_topics
  match "lessons/import" => "lessons#import", as: :import_lessons
  match "checkpoints/import" => "checkpoints#import", as: :import_checkpoints
  match "summaries/import" => "summaries#import", as: :import_summaries

  match "/seab_topics/display/:id" => "seab_topics#display_topic", as: :display_topic

  #User Controller
  match "/manage" => "usr#manage", as: :manage
  match "/manage/create" => "usr#create_item", as: :create_item
  match "/profile" => "usr#profile", as: :profile
  match "/staff" => "usr#staff", as: :staff
  match "manage/:id" => "subjects#edit", as: :edit_subject
  match "/update" => "usr#update", as: :update

  #Pages Controller
  match "/contact" => "pages#contact", as: :contact
  match "/opportunities"=>"pages#opportunities", as: :opportunities
  match "/partners"=> "pages#partners", as: :partners
  match "/presskit"=>"pages#presskit", as: :presskit
  match "/team"=> "pages#team", as: :team
end
