class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @article_1 = Article.all.order('vote DESC').first
    @article_2 = Article.all.order('vote DESC').second
    @article_3 = Article.all.order('vote DESC').third
    @article_4 = Article.all.order('vote DESC').fourth
  end
end
