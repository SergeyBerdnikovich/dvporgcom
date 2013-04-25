class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :initial_layout

  def initial_layout
    @layout_pages = Page.all
  end
end
