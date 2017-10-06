class AdminsController < ApplicationController

  def index_article
    @articles = Article.all.order('vote DESC')
  end

  def show
    @article = Article.find(params[:id])
  end

  def new_article
  end

  def create_article
  end

  def delete_article
  end

  def index_user
    @users = User.all.order(:id)
  end

  def new_user
  end

  def create_user
  end

  def delete_user
  end

  def index_review
  end

  def delete_review
  end

private

  def article_params
    params.require(:article).permit(:id, :title, :description, :photo, :photo_cache, :category, :user_id, :vote)
  end
end
