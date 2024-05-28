
  # Thanku You Shivabab Krishna Radha Rani Mata Rani for Everything
  # Jai Mata Dirradhe Radhe
  # Radhe Krishna
  # Jai Siya Ram
  # Jai Shree Ram
  # Jai Shree Krishna
  # Jai Bajrang Bali
  # Om Shanti Shivbaba
  # Hare Krishna Hare Krishna Krishna Krishna Hare Hare Hare Rama Hare Rama Rama Rama Hare Hare
  
  Rails.application.routes.draw do
    root 'home#index'
  resources :employees
  # delete "/employees/:id", to: "employees#destroy", as: :delete_employee
  # get 'pages/about-us'
  # get 'pages/contact-us'

  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'

end
