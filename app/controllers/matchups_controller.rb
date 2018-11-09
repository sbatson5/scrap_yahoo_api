class MatchupsController < ApplicationController
  def index
    render json: Matchup.all
  end

  def show
    render json: Matchup.find(params[:id])
  end

  def create
    @matchup = Matchup.new(matchup_params)

    if @matchup.save
      render json: @matchup
    else
      render json: {}
    end
  end

  private
  def matchup_params
    params.require(:matchup).permit(:year)
  end
end
