class MainController < ApplicationController
  def index
    flash.now[:notice] = "Notice flash"
    flash.now[:alert] = "Alert flash"
  end
end