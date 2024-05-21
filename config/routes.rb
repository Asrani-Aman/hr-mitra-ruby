Rails.application.routes.draw do
  root 'home#index'
  
  # get 'pages/about-us'
  # get 'pages/contact-us'

  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
end
