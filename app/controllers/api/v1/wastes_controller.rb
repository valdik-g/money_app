# frozen_string_literal: true

module Api
  module V1
    class WastesController < ApplicationController
      def index
        render json: { @current_company.all_wastes }
      end

      def show
        render json: { @waste }
      end

      def create; end

      def update; end

      def delete; end

      private

      def set_waste
        @waste = @current_company.wastes.find_by(id: params[:waste_id])

        return head(:not_found) unless @waste
      end
    end
  end
end
