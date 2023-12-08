# frozen_string_literal: true

module Api
  module V1
    class ReportsController < ApplicationController
      def create
        wastes = @current_company.wastes
        profits = @current_company.profits
        
        render json: { wastes: @current_company.wastes, profits: @current_company.profits,
                       total_wastes: , total_profits: , most_wastes:, most_profits:  }
      end
    end
  end
end
