class HomeController < ApplicationController
  def index
    @movies = Movie.sort_by_rank
    @books = Book.sort_by_rank
    @albums = Album.sort_by_rank
  end
end
