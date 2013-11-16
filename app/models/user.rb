class User < ActiveRecord::Base

  def god?
    self.username == "hiragi"
  end

end
