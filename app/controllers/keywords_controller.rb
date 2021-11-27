class KeywordsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_keyword, only: %i[edit update destroy]

  def index
    @keywords = Keyword.order(:title)

    if params[:query].present?
      sql_query = 'title ILIKE :query OR definition ILIKE :query'
      @keywords = Keyword.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { keywords: @keywords } }
    end
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
    if @keyword.save
      redirect_to keywords_path
    else
      render :new
    end
  end

  def edit() end

  def update
    @keyword.update(keyword_params)
    redirect_to keywords_path
  end

  def destroy
    @keyword.destroy
    redirect_to keywords_path
  end

  private

  def set_keyword
    @keyword = Keyword.find(params[:id])
  end

  def keyword_params
    params.require(:keyword).permit(:title, :definition, :image_url, :source_url)
  end
end
