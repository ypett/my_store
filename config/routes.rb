Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart' # changed get to post
  post 'order_complete' => 'cart#order_complete'

  get 'view_order' => 'cart#view_order' # add custom url instead of cart/view_order
  get 'checkout' => 'cart#checkout'

  get 'items' => 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  devise_for :users
  resources :products

  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
