Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new' # siempre debe ir antes si no lo pone en params
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
