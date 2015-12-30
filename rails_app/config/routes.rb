Rails.application.routes.draw do
  resource :jobs, only: :create
end
