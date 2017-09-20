class ReviewsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @reviews = @article.reviews
  end

  def new
    @article = Article.find(params[:article_id])
    @review = Review.new
  end

  def create
    @article = Article.find(params[:article_id])
    @review = Review.new(review_params)
    @review.article = Article.find(params[:article_id])
    @review.user = current_user
      if @review.save
        redirect_to article_path(@article)
      else
        render :new
      end
  end

  private

  def review_params
    params.require(:review).permit(:id, :title, :description, :rating, :user_id, :article_id)
  end
end
