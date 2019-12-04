Rails.application.routes.draw do
  root 'home#index'
  get 'ip' => 'home#ip'
end
