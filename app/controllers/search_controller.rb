class SearchController < ApplicationController
  def search
    @search_params = user_search_params
    @users = User.search(@search_params).includes(:books)
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:user, :book)
  end
end
