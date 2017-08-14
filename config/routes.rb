Rails.application.routes.draw do

  root 'application#goodbye'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'application#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get  'static_pages/about'

  get '/signup', to: 'users#new'

end
