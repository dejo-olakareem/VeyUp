class ReservationsController < ApplicationController

  include ReservationsHelper

  def new
    @user = current_user
    @reservation = Reservation.new
  end

  def create

  end

  def edit
  end

  def show
  end

  def index
  end
end
