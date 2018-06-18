class Api::V1::PastesController < ApplicationController

  def index
    render json: Paste.all
  end

  def create
    paste = Paste.create(paste_params)
    render json: paste
  end

  def show
    paste = Paste.find(params[:id])
    render json: paste
  end

  def recents
    paste = Paste.last(5).reverse
    render json: paste
  end

  private
  def paste_params
    params.require(:paste).permit(:content)
  end
end
