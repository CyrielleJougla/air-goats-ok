class PagesController < ApplicationController
  def dashboard
    @user = current_user
    @reservations = @user.reservations
  end
end
