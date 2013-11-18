class User < ActiveRecord::Base

  validates :username, presence: true, :length => {:minimum => 8, :maximum => 16 }
  validates :password, presence: true, :length => {:minimum => 8, :maximum => 16 }

  def god?
    self.username == "hiragi"
  end

end
