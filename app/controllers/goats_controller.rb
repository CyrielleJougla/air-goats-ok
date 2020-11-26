class GoatsController < ApplicationController
  def index
    @goats = Goat.all
    @goats = @goats.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?
    @goats = @goats.where(race: params[:race]) if params[:race].present?
    @goats = @goats.where(appetite: params[:appetite]) if params[:appetite].present?
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @user = current_user
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new
    end
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :price, :age, :race, :appetite, :bonus, :picture, :description, :user_id)
  end
end
