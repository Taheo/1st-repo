class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy

    redirect_to units_path
  end

  def update
    @unit = Unit.find(params[:id])
    if @unit.update_attributes(unit_params)
      redirect_to unit_path(@unit)
    else
      render 'edit'
    end

  end

  def show
    @unit = Unit.find(params[:id])
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to units_path
    else
      render 'new'
    end
  end

  private
  def unit_params
    params.require(:unit).permit(:name)
  end
end
