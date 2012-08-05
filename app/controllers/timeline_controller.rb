class TimelineController < ApplicationController
  def index
    @timelines = Timeline.all
  end
end
