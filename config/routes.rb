NeumannBiz::Application.routes.draw do
    match 'home' => 'pages#home'
    match 'cv' => 'pages#cv'
    match 'links' => 'pages#links'
    match 'projekte' => 'pages#projekte'
    match 'publikationen' => 'pages#publikationen'
    match 'studium' => 'pages#studium'
    match 'lehre' => 'pages#lehre'
    match 'forschung' => 'pages#forschung'
    match 'vortraege' => 'pages#vortraege'
    match 'computerlinguistik-studium' => 'pages#computerlinguistik-studium'
    match 'daf-studium' => 'pages#daf-studium'
    match 'ethnologie-studium' => 'pages#ethnologie-studium'
    
    # Alte Seite Redirects
    match 'data' => 'pages#data'
    match 'publication' => 'pages#publication'
    match 'projekt' => 'pages#projekt'
    match 'vortrag' => 'pages#vortraeg'
    match 'lmu' => 'pages#lmu'
    
    #Sources
    resources :sources
    
    match 'vorlesung/sources/download/:id' => 'sources#download'
    match 'sources/download/:id' => 'sources#download'
    match 'vorlesung/:id' => 'sources#vorlesung'
    
    match 'uebung/sources/download/:id' => 'sources#download'
    match 'uebung/:id' => 'sources#uebung'
    
    root :to =>'pages#home'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
