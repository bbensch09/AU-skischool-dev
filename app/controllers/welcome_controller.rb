class WelcomeController < ApplicationController
  def index
    @article = Article.last
  end

  def terms_of_service
  end

  def privacy
  end

  def about
    GoogleAnalyticsApi.new.event('test_category', 'test_action', params[:ga_client_id])
    puts"GA event tracking sent"
  end

  def how_it_works
  end

end
