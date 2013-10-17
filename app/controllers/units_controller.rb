class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
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
