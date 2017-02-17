class AlbumsController < ApplicationController

  def new
    @band_id = params[:band_id]
    @bands = Band.all.order(:name)
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash[:error] = @album.errors.full_messages
      redirect_to new_band_album_url(@album.band_id)
    end
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def edit
    @album = Album.find_by(id: params[:id])
    redner :edit
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update(album_params)
      redirect_to album_url(@album)
    else
      flash[:error] = @album.errors.full_messages
      redirect_to edit_album_url
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    if @album.destroy
      redirect_to band_url(@album.band_id)
    else
      flash.now[:error] = "Album is indestructable!"
    end
  end

  private
  def album_params
    params.require(:album).permit(:title, :year, :recording_type, :band_id)
  end
end
