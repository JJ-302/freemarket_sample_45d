Rails.application.routes.draw do
root 'products#index'
<<<<<<< HEAD
resources :products, only: [:new, :show]
=======
resources :products, only: [:new, :show] do
    get 'confirm_purchase', on: :member
    end
>>>>>>> JJ-302/master
end
