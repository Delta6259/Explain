class ArticlesController < ApplicationController
  def index

    if params[:find] == "sport"
      @articles = Article.where(category: "sport")
    elsif params[:find] == "actualité"
      @articles = Article.where(category: "actualité")
    elsif params[:find] == "cinéma"
      @articles = Article.where(category: "cinéma")
    elsif params[:find] == "cuisine"
      @articles = Article.where(category: "cuisine")
    elsif params[:find] == "informatique"
      @articles = Article.where(category: "informatique")
    else
      @articles = Article.all
    end
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



  private

  def article_params
    params.require(:article).permit(:id, :title, :description, :photo, :photo_cache, :category, :user_id, :vote)
  end
end
