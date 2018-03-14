class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end
  def create
@url = Url.new(get_params)
@url.save
redirect_to root_path
  end
  def show
@url = Url.find(params[:id])
redirect_to @url.url_text
  end
  private
    def get_params
    params.require(:url).permit(:url_text)
    end

end
