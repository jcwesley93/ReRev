class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params(:comment))
    if @review.save
      redirect_to submission_path
    end
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

  def review_params(*args)
    params.require(:review).permit(*args)
  end

end
