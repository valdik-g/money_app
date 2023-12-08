# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      # before_action :check_admin, only: %i[index create_csv update]
      skip_before_action :authorize, only: %i[index current_user create]
      skip_before_action :authorize_company, only: :index

      def index
        render json: User.all # @current_company.users
      end

      def show_current_user
        return head(:not_found) unless current_user

        render json: { user: current_user }
      end

      def create
        @current_company.users.create(users_params)
      end

      def create_csv
      end

      def update
        @user.update(users_params)
      end

      def delete
        @user.delete

        head(:no_content)
      end

      private

      def set_user
        @user = User.find_by(id: params[:id])

        head(:not_found) unless @user
      end

      def users_params
        params.permit(:admin, :user_identificator, :fullname, :post, :password)
      end

      def check_admin
        return head(:unauthorized) unless @current_user.admin
      end
    end
  end
end
