class Category < ActiveRecord::Base
  has_many :articles, :dependent => :nullify
end
