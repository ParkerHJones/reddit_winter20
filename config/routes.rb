Rails.application.routes.draw do
   root 'subs#index'
  # get '/subs', to: 'subs#index'
  # post '/subs', to: 'subs#create'

  resources :subs do 
    resources :topics
  end 

      resources topics: do
        resources :comments 
    end 

    # :id
    # params [:id]

    /subs/1/topics/3
    params[:sub_id] = 1
    params [:id] = 3


end
