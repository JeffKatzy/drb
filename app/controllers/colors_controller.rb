class ColorsController < ApplicationController
  
  def index
    render
  end
  
  def create
    begin
      RemoteTopfunkyIM.change_color(params[:color].to_sym)
    rescue DRb::DRbConnError => e
      Rails.logger.info "The DRb server could not be contacted"
    end

    respond_to do |format|
      format.html { redirect_to colors_url }
    end
  end
  
end
