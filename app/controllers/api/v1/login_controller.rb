# class LoginController < ApplicationController
#   def login
#     @user = User.find_by(email: params[:email])
#     if @user && @user.authenticate(params[:password])
#       token = JWT.encode({ user_id: @user.id }, ENV['SECRET'], 'HS256')
#       render json: { token: token, name: @user.name }, status: :ok
#     else
#       render json: { errors: "Could not login with those credentials" },
#         status: :unauthorized
#     end
#   end
# end
