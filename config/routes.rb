Rails.application.routes.draw do
  root "top#index"
  get 'about' => "top#about", as: "about"
  1.upto(18) do |n|
    get "lesson/step#{n}(/:name)" => "lesson#step#{n}"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :members do
    get "search", on: :collection
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
end
