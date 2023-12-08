# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authorize
      skip_before_action :authorize_company, only: :create_company

      def create_company
        company = Company.find_by(uuid: params[:uuid])
        return head(:unauthorized) unless company

        login_company company
        render json: company, status: :created
      end

      def create
        user = current_company.users.find_by(user_identificator: params["user_identificator"],
                                              password: params["password"])
        
        return head(:unauthorized) unless user

        login user
        render json: user, status: :created
      end

      def destroy
        session.delete(:user_id)
        session.delete(:admin_id)
      end
    end
  end
end
  