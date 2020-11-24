class ReservationsController < ApplicationController

  def new
    @user = current_user
    @goat = Goat.find(params[:goat_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @goat = Goat.find(params[:goat_id])
    @reservation.user = current_user
    @reservation.goat = @goat
    if @reservation.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :user_id, :goat_id)
  end
end
