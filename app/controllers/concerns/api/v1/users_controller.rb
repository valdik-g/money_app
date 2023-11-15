# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        render json: User.all
      end

      def show
        render json: @user
      end

      def create
        User.create(params)
      end

      def update
        @user.update(update_params)
      end

      def login; end

      private

      def set_user
        @user = User.find_by(id: params[:id])

        head(:not_found) unless @user
      end
    end
  end
end
