class User < ActiveRecord::Base
has_many :articles
  def self.authenticate(email, password)
    user = self.find(:first, :conditions => "email = '#{email}' and password = '#{password}'")
  end
end
