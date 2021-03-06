class SubmissionsController < ApplicationController
  before_action :authorized, except: [:index, :show]
  before_action :get_submission, only: [:show, :edit, :update, :destroy]

  def index
    @submissions = Submission.all
    redirect_to '/'
  end

  def show
    @review = Review.new
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params(:title, :content, :genre_id))
    @submission.author = current_author
    if @submission.save
      redirect_to submission_path(@submission)
    else
      render :new
    end
  end

  def edit
    if @submission.author == current_author
      render :edit
    else
      redirect_to submission_path(@submission)
    end
  end

  def update
    if @submission.author == current_author
      @submission.update(submission_params(:title, :content, :genre_id))
      if @submission.save
        redirect_to submission_path(@submission), alert: "The submission was updated."
      else
        render :edit
      end
    end
  end

  def destroy
    if @submission.author == current_author
      @submission.destroy
      flash[:notice] = 'Submission successfully deleted!'
      redirect_to author_path(@submission.author)
    end
  end

  private

  def get_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params(*args)
    params.require(:submission).permit(*args)
  end

end
