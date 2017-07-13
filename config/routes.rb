Rails.application.routes.draw do
  root 'employee#index'
  match 'employee' => 'employee#info', :via => :get
  get 'index', to: 'employee#index'
end
