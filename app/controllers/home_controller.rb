class HomeController < ApplicationController
  def index
    @movies = Movie.all.limit(10).sort_by { |movie| movie.rank }.reverse
    @books = Book.all.limit(10).sort_by { |book| book.rank }.reverse
    @albums = Album.all.limit(10).sort_by { |album| album.rank }.reverse
  end
end
