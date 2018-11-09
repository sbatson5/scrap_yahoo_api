class SeasonsController < ApplicationController
  def index
    render json: Season.all
  end

  def show
    render json: Season.find(params[:id])
  end

  def create
    @season = Season.new(season_params)

    if @season.save
      render json: @season
    else
      render json: {}
    end
  end

  private
  def season_params
    params.require(:season).permit(:year)
  end
end
