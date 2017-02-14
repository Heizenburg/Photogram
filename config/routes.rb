Rails.application.routes.draw do

 root 'posts#index' 
  get 'notifications/:id/link_through', to: 'notifications#link_through',
                                        as: :link_through
  get 'notifications', to: 'notifications#index'
 
 resources :posts do  
 resources :comments
    member do
        get 'like'
        get 'unlike'
    end
 end 

 get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
 get ':user_name',      to: 'profiles#show', as: :profile    
 patch ':user_name/edit', to: 'profiles#update', as: :update_profile  
 devise_for :users, :controllers => { registrations: 'registrations' }
 
end