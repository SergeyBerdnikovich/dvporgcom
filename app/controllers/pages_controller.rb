class PagesController < ApplicationController
  def welcome
    @last_projects = Project.last(5)
    @projects = Project.all
    @last_news = News.last(3)
  end

  def show
  end
end
