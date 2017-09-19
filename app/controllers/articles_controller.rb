class ArticlesController < ApplicationController
  def index

    if params[:find] != ""
      @articles = Article.where(category: params[:find]).order('vote DESC')
    else
      @articles = Article.all.order('vote DESC')
    end

    # if params[:find] == "sport"
    #   @articles = Article.where(category: "sport").order('vote DESC')
    # elsif params[:find] == "actualité"
    #   @articles = Article.where(category: "actualité").order('vote DESC')
    # elsif params[:find] == "cinéma"
    #   @articles = Article.where(category: "cinéma").order('vote DESC')
    # elsif params[:find] == "cuisine"
    #   @articles = Article.where(category: "cuisine").order('vote DESC')
    # elsif params[:find] == "informatique"
    #   @articles = Article.where(category: "informatique").order('vote DESC')
    # else
    #   @articles = Article.all.order('vote DESC')
    # end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article_1 = Article.all.order('vote DESC').first
    @article_2 = Article.all.order('vote DESC').second
    @article_3 = Article.all.order('vote DESC').third
    @article_4 = Article.all.order('vote DESC').fourth
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.vote = 0
    if @article.save
    redirect_to root_path #A modifier
    else
    render :new
    end
  end

  def upvote
    if Article.increment_counter(:vote, params[:id])
      redirect_back(fallback_location: root_path)
      flash[:notice] =  "Thank you for your vote !"
    end
  end

  private

  def article_params
    params.require(:article).permit(:id, :title, :description, :photo, :photo_cache, :category, :user_id, :vote)
  end
end
