class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
    redirect_to root_path #A modifier
    else
    render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def sort_by
    @articles = Article.where(category: params[:category])

    # redirect_back(fallback_location: root_path)
  end

  private

  def article_params
    params.require(:article).permit(:id, :title, :description, :photo, :photo_cache, :category, :user_id, :vote)
  end
end
