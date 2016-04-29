class WelcomeController < ApplicationController
  def index
    @article = Article.last
  end

  def terms_of_service
  end

  def privacy
  end

  def about
  end

  def how_it_works
  end

end
