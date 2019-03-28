class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.author_id = current_author.id
    @review.submission_id = params[:submission_id]
    @review.save
    redirect_to @review.submission
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.author == current_author
      @review.destroy
      redirect_to author_path(@review.author)
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end

end
