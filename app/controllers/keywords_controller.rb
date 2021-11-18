class KeywordsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @keywords = Keyword.all
  end
end
