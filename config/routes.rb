Rails.application.routes.draw do

 root 'posts#index'  
 resources :posts do  
  resources :comments
 end 

 get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
 get ':user_name',      to: 'profiles#show', as: :profile    
 patch ':user_name/edit', to: 'profiles#update', as: :update_profile  
 devise_for :users, :controllers => { registrations: 'registrations' }
 
end