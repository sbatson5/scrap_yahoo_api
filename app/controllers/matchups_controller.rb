class MatchupsController < ApplicationController
  def index
    @matchups = Matchup.all
    if params[:manager_id]
      @matchups = @matchups.select { |matchup| matchup.manager_id == params[:manager_id].to_i }
    elsif params[:opponent_id]
      @matchups = @matchups.select { |matchup| matchup.opponent_id == params[:opponent_id].to_i }
    end
    render json: @matchups
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
    params.require(:matchup).permit(:season_id, :opponent_id, :manager_id, :score, :victory, :week)
  end
end
