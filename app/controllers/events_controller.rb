class EventsController < ApplicationController
  before_filter :set_search
  def index
  end

  def search
    @events = @q.result(distinct: true)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @events }
    end
  end


  private
  def set_search
    @q = Event.search(params[:q])
  end
end
