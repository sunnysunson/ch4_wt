class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
    # default: render 'new' template
  end
  def create
  @movie = Movie.create!(params[:movie])
  redirect_to movies_path
  end
end
def create
  @movie = Movie.create!(params[:movie])
  flash[:notice] = "#{@movie.title} was successfully created."
  redirect_to movies_path
end
