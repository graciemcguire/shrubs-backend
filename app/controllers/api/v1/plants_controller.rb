module Api
  module V1
    class PlantsController < ApplicationController
      def index
        @plants = Plant.all
        render json: @plants
      end
    end
  end
end
