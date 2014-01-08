class ScreenshotsController < ApplicationController
  before_action :set_screenshot, only: [:show, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  # GET /screenshots
  # GET /screenshots.json
  def index
    logger.info('test')
    @screenshots = Screenshot.all
  end

  # GET /screenshots/1
  # GET /screenshots/1.json
  def show
  end

  # POST /screenshots
  # POST /screenshots.json
  def create
    logger.info(params)
    @screenshot = Screenshot.new
    @screenshot.image = params[:imagedata]
    @screenshot.save
    render text: screenshot_url(@screenshot)
  end

  # DELETE /screenshots/1
  # DELETE /screenshots/1.json
  def destroy
    @screenshot.destroy
    respond_to do |format|
      format.html { redirect_to screenshots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screenshot
      @screenshot = Screenshot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def screenshot_params
    #  params[:screenshot]
    #end
end
