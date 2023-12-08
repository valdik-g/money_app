# frozen_string_literal: true

module Api
  module V1
    class CompaniesController < ApplicationController
      skip_before_action :authorize
      skip_before_action :authorize_company
      before_action :set_company, only: %i[show]

      def show
        p 'aaaa'
        login_company @company
        p current_company
        render json: { company: @company }
      end

      def show_current_company
        render json: { company: current_company }
      end

      def create
        company = Company.new(create_params)
        return render json: { errors: company.errors.full_messages }, status: :unprocessable_entity unless company.valid?

        company.save!
        login_company(company)
        render json: { company: company }, status: :created
      end

      def update
        @company.update(update_params)
      end

      private

      def set_company
        p 'aaaaa'
        @company = Company.find_by(uuid: params[:id])
        head(:not_found) unless @company
      end

      def create_params
        params.permit(:uuid, :company_name)
      end

      def update_params
        params.permit(:company_name)
      end
    end
  end
end
