class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  named_scope :news , :conditions => {:category_id => 1}
  named_scope :association_meetings , :conditions => {:category_id => 2}
end
