Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      devise_for :users
      resources :sessions
      resources :profiles 
    end
  end
end
