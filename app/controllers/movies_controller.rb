class MoviesController < ApplicationController

  def index
    @movies = Movie.all.sort_by { |movie| movie.rank }.reverse
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def show
    find_movie
  end

  def edit
    find_movie
  end

  def update
    find_movie
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def vote
    find_movie
    @movie.rank += 1
    @movie.save
    redirect_to movie_path(@movie)
  end

  def destroy
    find_movie
    if @movie.delete
      redirect_to movies_path
    else
      render :show
    end
  end

  private

  def movie_params
    (params.require(:movie).permit(:name, :director, :description, :rank))
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
