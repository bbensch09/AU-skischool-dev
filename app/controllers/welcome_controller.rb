class WelcomeController < ApplicationController
      layout false
      # layout 'application', :except => :new_instructor

  def index
    @article = Article.last
  end

  def terms_of_service
  end

  def privacy
  end

  def new_instructor
  end

  def about
    # GoogleAnalyticsApi.new.event('browsing', 'view_about_me')
    # strangely if the ga_client_id isn't available it doesn't seem to log the event at all...?
    # GoogleAnalyticsApi.new.event('test_category', 'test_action', params[:ga_client_id])
    # puts"GA event tracking sent"
  end

  def how_it_works
  end

end
