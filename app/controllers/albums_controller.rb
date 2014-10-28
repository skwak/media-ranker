class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def show
    find_album
  end

  def edit
    find_album
  end

  def update
    find_album
    if @album.update(album_params)
      redirect_to album_path(@album)
    else
      render :edit
    end
  end

  def vote
    find_album
    if !@album.rank
      @album.rank = 1
    else
      @album.rank += 1
    end
    @album.save
    redirect_to :back
  end

  def destroy
    find_album
    if @album.delete
      redirect_to albums_path
    else
      render :show
    end
  end

  private

  def album_params
    (params.require(:album).permit(:name, :artist, :description, :rank))
  end

  def find_album
    @album = Album.find(params[:id])
  end

end
