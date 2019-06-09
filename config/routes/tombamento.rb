resources :tombamentos do
	#get '/tombamentos', to: 'tombamentos#index', as: tombamento
	#get 'tombamentos', to: 'tombamentos#index', id: 'tombamentos/index', as: 'tombamento'
  member do
    put :flag
    put :unflag
  end

end