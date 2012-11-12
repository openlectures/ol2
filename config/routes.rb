Ol2::Application.routes.draw do
  resources :subjects

  root to: "pages#index"
  
  get "pages/index"
  get "pages/contact"
  get "pages/opportunities"
  get "pages/partners"
  get "pages/presskit"
  get "pages/team"
end
