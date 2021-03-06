class ScreenshotsController < ApplicationController
  before_action :set_screenshot, only: [:show, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @screenshots = Screenshot.where(user_id: current_user)
  end

  def show
  end

  def create
    @screenshot = Screenshot.new
    @screenshot.image = params[:imagedata]
    @screenshot.user = current_user
    @screenshot.save
    render text: screenshot_url(@screenshot)
  end

  def destroy
    @screenshot.destroy
    redirect_to screenshots_url
  end

  private
  def set_screenshot
    @screenshot = Screenshot.friendly.find(params[:id])
  end
end
