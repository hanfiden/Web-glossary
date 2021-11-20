class KeywordsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @keywords = Keyword.all

    if params[:query].present?
      sql_query = "title ILIKE :query OR definition ILIKE :query"
      @keywords = Keyword.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { keywords: @keywords } }
    end
  end
  # def index
  #   if params[:query].present?
  #     sql_query = "title ILIKE :query OR definition ILIKE :query"
  #     @keywords = Keyword.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @keywords = Keyword.all
  #   end
  # end
end
