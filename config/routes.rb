NeumannBiz::Application.routes.draw do

    match 'impressum' => 'pages#impressum'
    
    #Data-Munging 
    match 'data_munging' => 'data_munging#index'
    get "data_munging/about"
    get "data_munging/plain_text"
    get "data_munging/csv"
    get "data_munging/word"
    get "data_munging/excel"
    get "data_munging/pdf"
    get "data_munging/html"
    get "data_munging/xml"
    get "data_munging/hocr"
    get "data_munging/odf"
    get "data_munging/tei"
    get "data_munging/wikipedia_dump"
    get "data_munging/static_data"
    get "data_munging/dynamic_data"
    get "data_munging/orm"
    get "data_munging/webframeworks"
    get "data_munging/rest"
    get "data_munging/soap"
    get "data_munging/json"
    get "data_munging/abbyy_xml"
    get "data_munging/alto_xml"
    get "data_munging/tika"
    get "data_munging/client_server"
    get "data_munging/elastic_search"
    get "data_munging/lucene_with_SOLR"
    
    #Document Understanding
    match "document_understanding" => 'document_understanding#index'
    get "document_understanding/file_formats"
    get "document_understanding/techniques"
    
    
    #Vorlesung zu Angewandtes Programmieren in der Computerlinguistik
    match "angewandte_programmierung_in_der_computerlinguistik" => 'angewandte_programmierung_in_der_computerlinguistik#index'
    get "angewandte_programmierung_in_der_computerlinguistik/modules"
    get "angewandte_programmierung_in_der_computerlinguistik/object"
    get "angewandte_programmierung_in_der_computerlinguistik/i18n"
    
  
    #Sources
    resources :sources
    
    match 'vorlesung/sources/download/:id' => 'sources#download'
    match 'sources/download/:id' => 'sources#download'
    match 'vorlesung/:id' => 'sources#vorlesung'
    
    match 'uebung/sources/download/:id' => 'sources#download'
    match 'uebung/:id' => 'sources#uebung'
    
    match 'lehre/cpp-SS2011-klausurergebnisse' => 'pages#cpp-SS2011-klausurergebnisse'
    
    root :to =>'data_munging#about'
  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
