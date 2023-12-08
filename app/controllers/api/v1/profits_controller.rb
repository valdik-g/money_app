# frozen_string_literal: true

module Api
  module V1
    class ProfitsController < ApplicationController
      before_action :set_profit, only: %i[index create update delete]

      def index
        render json: Profit.where(month: params[:month])
      end

      def show
        render json: @profit
      end

      def create
        profit = @current_user.profits.create(create_params)

        render json: profit, status: created
      end

      def update
        profit = Profit.update(update_params)

        render json: profit, status: updated
      end

      def delete
        @profit.delete

        head(:no_content)
      end

      private

      def create_params
        params.permit()
      end

      def set_profit
        @profit = Profit.find_by(id: params[:profit_id])

        head(:not_found) unless @profit
      end
    end
  end
end
