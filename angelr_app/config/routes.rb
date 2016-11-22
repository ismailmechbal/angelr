Rails.application.routes.draw do
  root to: redirect('/startups/1')
  devise_for :users,
    path: '/auth',
    path_names: {
      sign_up: 'register',
      sign_in: 'login',
      sign_out: 'logout'
    }
  resources :startups, only: [:show]
end