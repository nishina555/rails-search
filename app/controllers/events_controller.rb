class EventsController < ApplicationController
  before_filter :set_search
  def index
  end

  def search
    @events = @q.result(distinct: true)
  end

  private
  def set_search
    @q = Event.search(params[:q])
  end
end
