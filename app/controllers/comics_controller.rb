class ComicsController < ApplicationController

  before_action :require_user, only: [:create, :destroy]

  def index
    @comics = Comic.all
  end
  def show
    @comic = Comic.find(params[:id])
  end

  def home
    @comic = Comic.last
  end
  def create
    @post = Comic.new(comic_params)
    if @post.save
      flash[:success] = "Comic was created."
      redirect_to admin_index_path
    else
      flash[:error] = "Comic was not created.  Try again!"
      render 'admin/index'
    end
  end

  def destroy
    comic = Comic.find(params[:id])
    if comic.delete
      flash[:success] = "Comic was deleted."
      redirect_to root_path
    else
      flash[:error] = "There was an error trying to delete the comic."
      render :back
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :img_url)
  end
  
end
