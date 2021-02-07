class ParksController < ApplicationController
before_action :force_json, only: :search
before_action :set_park, only: [:show, :update, :destroy]

    def index
        parks = Park.all
            render json: parks
    end

    def search
        @parks = Item.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
    end

    def show
    render json: @park
    end
    
    private
    
    def force_json
        request.format = :json
    end

private
    def set_park
        @park = Park.find(params[:id])
      end
end
