class PicturesController < ApplicationController
  def index
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new

  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user
    if @picture.save
      redirect_to user_path(current_user)
    end

  end

  def edit
    @picture = Picture.new
    @picture = Picture.find(params[:id])

  end

  def update
    @picture = Picture.find(params[:id])  
    @picture.user = current_user
    if @picture.update(picture_params)
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.user = current_user
    if @picture.destroy
      redirect_to user_path(current_user)
   
    end

  end

  private
  def picture_params
    params.require(:picture).permit(:url, :location, :caption, :body, :user_id)
  end
  
end
