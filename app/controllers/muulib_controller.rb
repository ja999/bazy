class MuulibController < ApplicationController

  expose(:search_results){ Album.find_with_index(params[:search]) +
                           RecordLabel.find_with_index(params[:search]) +
                           Artist.find_with_index(params[:search]) +
                           Song.find_with_index(params[:search]) +
                           Genre.find_with_index(params[:search]) if params[:search].present? }

  def index

  end

  def create
  end

  def update
  end

  def destroy
  end
end
