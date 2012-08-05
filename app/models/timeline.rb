class Timeline < ActiveRecord::Base
  attr_accessible :content, :timelineable_id, :timelineable_type

  belongs_to :timelineable, polymorphic: true
end
