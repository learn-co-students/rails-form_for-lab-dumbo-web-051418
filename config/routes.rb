Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :students, only: [:show, :create, :new, :edit, :update]
  resources :school_classes, only: [:show, :create, :new, :edit, :update]
end
