class User < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }

  has_many :snippets
  has_one :profile
  # Include default devise modules. Others available are:
  # Need to activate Omniauthabl to use FB still :omniauthable
  # Also need to reactivate :confirmable to resume email confirmations
  # devise :registerable, :rememberable, :trackable, :validatable, :lockable, :timeoutable#, :confirmable, :database_authenticatable, :recoverable,
  after_create :send_admin_notification

  def send_admin_notification
      @user = User.last
      UserMailer.new_user_signed_up(@user).deliver_now
      #reference guide: http://blog.deveo.com/server-side-google-analytics-event-tracking-with-rails/
      # GoogleAnalyticsApi.new.event('subscriber', 'signup')
  end

end
