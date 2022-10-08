class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # protect_from_forgery except: :sign_in
end
