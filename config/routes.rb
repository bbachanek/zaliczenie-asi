Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'


  resources :users
  resources :contacts

  root 'contacts#index'

    get 'admin' => 'admin#index'
  	controller :sessions do
  		get 'login' => :new
  		post 'login' => :create
  		delete 'logout' => :destroy
  	end
end
