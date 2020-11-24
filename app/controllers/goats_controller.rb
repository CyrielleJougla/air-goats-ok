class GoatsController < ApplicationController

  def index
    @goats = Goat.all
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @user = User.find(params[:user_id])
    @goat.user = @user
    if @goat.save
      redirect_to goats_path
    else
      render :new
    end
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :price, :age, :race, :appetite, :bonus, :description, :picture, :user_id)
  end
end
