Blog::Application.routes.draw do

  resources :items

  resource :posts

  root :to => "welcome#index"

  match "welcome/login" => "welcome#login"
  match "welcome/login_check" => "welcome#login_check"
  match "welcome/post" => "welcome#post"
  match "welcome/post_blog" => "welcome#post_blog"
end
