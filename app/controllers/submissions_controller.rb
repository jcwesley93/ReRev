class SubmissionsController < ApplicationController
  before_action :get_submission, only: [:show, :edit, :update, :destroy]

  def index
    @submissions = Submission.all
  end

  def show
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.create(submission_params(:title, :content))
    if @submission.save
      redirect_to submission_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @submission.update(submission_params(:title, :content))
    if @submission.save
      redirect_to submission_path
    else
      render :edit
    end
  end

  def destroy
    @submission.destroy
  end

  private

  def get_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params(*args)
    params.require(:submission).permit(*args)
  end

end
