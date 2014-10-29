class HomeController < ApplicationController
  def index
    @movies = Movie.all.sort_by { |movie| movie.rank }.reverse
    @books = Book.all.sort_by { |book| book.rank }.reverse
    @albums = Album.all.sort_by { |album| album.rank }.reverse
  end
end
