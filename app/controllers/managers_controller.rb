class ManagersController < ApplicationController
  def index
    render json: Manager.all
  end

  def show
    render json: Manager.find(params[:id])
  end

  def create
    @manager = Manager.new(manager_params)

    if @manager.save
      render json: @manager
    else
      render json: {}
    end
  end

  private
  def manager_params
    params.require(:manager).permit(:real_name, :current_nickname)
  end
end
