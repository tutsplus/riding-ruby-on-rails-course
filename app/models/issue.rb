class Issue < ActiveRecord::Base
  attr_accessible :description, :no_followers, :title

  validates_presence_of :title
  validates_uniqueness_of :title, message: "should be unique, sir."

  validates_length_of :description, minimum: 10, maximum: 12 #, is: 6
  validates_numericality_of :no_followers, allow_blank: true

  validates_with YesnoValidator

  belongs_to :project

  after_create :add_to_timeline

  private

  def add_to_timeline
    Timeline.create!({ content: "An issue was created!", timelineable_id: id, timelineable_type: self.class.to_s })
  end
end
