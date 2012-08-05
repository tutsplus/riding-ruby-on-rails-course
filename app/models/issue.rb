class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title

  validates_presence_of :title
  validates_uniqueness_of :title, message: "should be unique, sir."
end
