class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title
end
