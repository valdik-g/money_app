class ApplicationController < ActionController::Base
#   before_action :authorize

#   private

#   def login(user)
#     session[:user_id] = user.id
#   end

#   def current_user
#     @current_user ||= session[:user_id] && User.find_by(user_id: session[:user_id])
#   end

#   def current_admin
#     @current_admin ||= session[:admin_id] && Admin.find_by(admin_id: session[:admin_id])
#   end

#   def authorize
#     head(:unauthorized) unless current_admin || current_user
#   end

#   def authorize_admin
#     return if current_admin

#     current_user ? head(:forbidden) : head(:unauthorized)
#   end
end
