class SearchController < ApplicationController
  def image
    render json: { results: search_result }
  end

  private

  def search_params
    params[:query]
  end

  def search_result
    SearchImageByLink.new(search_params).search
  end
end
