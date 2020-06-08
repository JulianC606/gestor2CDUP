class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dashboard

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dashboard
    @dashboard = true
  end

end
