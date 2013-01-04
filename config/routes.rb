Ol2::Application.routes.draw do
  resources :seab_sub_topics, :except => [:new, :show]
  resources :seab_topics

  #Usr Controller
  match "/manage" => "usr#manage", as: :manage
  match "/manage/create" => "usr#create_item", as: :create_item
  match "/profile" => "usr#profile", as: :profile
  match "/staff" => "usr#staff", as: :staff
  match "manage/:id" => "subjects#edit", as: :edit_subject
  match "/manage_users" => "usr#manage_users", as: :manage_users

  #Root Page
  root to: "pages#index"

  #User Authentication Solution
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
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

  match "subjects/actions/import" => "subjects#import", as: :import_subjects
  match "seab_topics/actions/import" => "seab_topics#import", as: :import_seab_topics
  match "seab_sub_topics/actions/import" => "seab_sub_topics#import", as: :import_seab_sub_topics
  match "topics/actions/import" => "topics#import", as: :import_topics
  match "lessons/actions/import" => "lessons#import", as: :import_lessons
  match "checkpoints/actions/import" => "checkpoints#import", as: :import_checkpoints
  match "summaries/actions/import" => "summaries#import", as: :import_summaries
  match "questionanswers/actions/import" => "questionanswers#import", as: :import_questionanswers

  match "/seab_topics/display/:id" => "seab_topics#display_topic", as: :display_topic

  #Pages Controller
  match "/contact" => "pages#contact", as: :contact
  match "/opportunities"=>"pages#opportunities", as: :opportunities
  match "/partners"=> "pages#partners", as: :partners
  match "/presskit"=>"pages#presskit", as: :presskit
  match "/team"=> "pages#team", as: :team
end
