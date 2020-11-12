Rails.application.routes.draw do
  get 'atricles/index'
  root controller: :articles, action: :index
end
