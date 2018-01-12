class PicturesController < ApplicationController
  def index
  end

  def show
    
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
  end

  def update
  end

  def destroy
  end

  private
  def picture_params
    params.require(:picture).permit(:url, :location, :caption, :body, :user_id)
  end
  
end
