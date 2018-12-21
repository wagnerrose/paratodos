module Site
  class AnalyzesController < ApplicationController

    before_action :set_state, only: [:show]

    layout "site"

    def index
      @states = State.all.order(:name)
      #@places = Place.all
      #@counties = County.all
      if params[:state].present?
        @counties = State.find(params[:state]).counties
        if request.xhr?
          respond_to do |format|
            format.json {
              render json: {counties: @counties}
            }
          end
        end
      end
    end

    def show

   end

    def update_analyze
        @places = Place.where(county_id: params[:sel_county])
        @county = County.find(params[:sel_county])
        @stations = County.find(params[:sel_county]).stations
        respond_to do |format|
          format.js
        end
    end

    def state_params
      params.require(:state).permit(:state, :name)
    end
  end
end
