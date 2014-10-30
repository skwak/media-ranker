class HomeController < ApplicationController
  def index
    @movies = Movie.limit(5).sort_by_rank
    @books = Book.limit(5).sort_by_rank
    @albums = Album.limit(5).sort_by_rank
  end
end
