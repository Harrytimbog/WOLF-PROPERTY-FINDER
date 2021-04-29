class DashboardController < ApplicationController
  before_action :set_sidebar

  def index
    @user = User.find(params[:id])
  end

  def profile
    @user = User.find(params[:id])
  end

  private

  def set_sidebar
    @show_sidebar = true
  end
end
