class PicturesController < ApplicationController
  def index
  end

  def show
    @picture.uesr = current_user
  end

  def new
    @picture = Picture.new

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
