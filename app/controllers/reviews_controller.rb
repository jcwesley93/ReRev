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


  # def edit
  # end

  # def update
  #   @submission.update(submission_params(:title, :content))
  #   if @submission.save
  #     redirect_to submission_path
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @submission.destroy
  # end

  private

  def get_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:comment)
  end

end
