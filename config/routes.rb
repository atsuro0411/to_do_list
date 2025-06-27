Rails.application.routes.draw do
  get "login" => "users#login_form"
end
