class PagesController < ApplicationController
  def welcome
    @last_projects = Project.last(5)
    @projects = Project.all
    @last_news = News.last(3)
  end

  def show
    @page = Page.find(params[:id])
  end

  def design
  end

  def development
  end

  def seo_optimization
  end
end
