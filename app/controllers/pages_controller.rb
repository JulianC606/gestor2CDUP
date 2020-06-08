class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home
  def home
  end

  def dashboard
    authorize :dashboard, :show?
    @dashboard = true
  end
end
