class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:keyword].present?
      @movies = @movies.where('name LIKE ? OR description LIKE ?', "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    end

    if params[:is_showing].present?
      @movies = @movies.where(is_showing: params[:is_showing])
    end
  end
end