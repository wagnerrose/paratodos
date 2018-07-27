module Site
  class AnalyzesController < ApplicationController

    #before_action :set_state, only: [:show]

    layout "site"

    def index
      @states = State.all
      @counties = []

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
      @places = County.find(params[:county]).places
      respond_to do |format|
        format.js {render layout: false} # Add this line to you respond_to block
      end
    end

    def state_params
      params.require(:state).permit(:state, :name)
    end
  end
end
