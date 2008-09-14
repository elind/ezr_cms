ActionController::Routing::Routes.draw do |map|
  map.resources :ezr_content_object_attributes
  map.resources :ezr_content_objects
  map.resources :ezr_content_class_attributes
  map.resources :ezr_content_classes
  map.resources :pages

  map.connect '', :controller => 'pages', :action => 'index'

  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
