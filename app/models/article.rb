class Article < ActiveRecord::Base
  require 'aws-sdk-v1'
  require 'aws-sdk'

    def time_since_written
    time_elapsed = ((Date.today - published) / 1).round
      if time_elapsed < 1
        return "today."
      else
        return "#{time_elapsed} days ago."
      end
  end
end
