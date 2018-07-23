module Site
  class AnalyzesController < ApplicationController

    before_action :set_state, only: [:show]

    layout "site"

    def index
      @states = State.all
      @counties = []

      if params[:state].present?
        @counties = State.find(params[:state]).counties
      end
      if request.xhr?
        respond_to do |format|
          format.json {
            render json: {counties: @counties}
          }
        end
      end
    end

    def show

    end

    def state_params
      params.require(:state).permit(:state, :name)
    end


  end
end
