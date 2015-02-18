Rails.application.routes.draw do
  scope "/:locale", locale: /en|fr/ do
    #devise_scope :user do
    #  get     "/login"   => "devise/sessions#new"
    #  delete  "/logout"  => "devise/sessions#destroy"
    #  get     "/signup"  => "devise/registrations#new"
    #end
    
    devise_for :user
    
    get 'help'    => 'static_pages#help'
    get 'about'   => 'static_pages#about'
    get 'contact' => 'static_pages#contact'
    
    resources :items,          only: [:create, :edit, :update, :destroy]
    post "search" => 'items#search'
    
    get '/'       => 'static_pages#home'
  end
  
  get 'help'    => redirect("/en/help")
  get 'about'   => redirect("/en/about")
  get 'contact' => redirect("/en/contact")
  
  root to: redirect("/#{I18n.default_locale}/")
end
