class KeywordsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR definition ILIKE :query"
      @keywords = Keyword.where(sql_query, query: "%#{params[:query]}%")
    else
      @keywords = Keyword.all
    end
  end
end
