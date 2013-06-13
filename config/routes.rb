Refinery::Core::Engine.routes.append do

  # Admin routes
  namespace :templates, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :templates do
        collection do
          post :update_positions
          get :insert
          get :dialog_preview
        end
      end
    end
  end

end
