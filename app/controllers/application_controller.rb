class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_author

  def authorized
    redirect_to login_path unless logged_in?
  end

  def current_author
    if session[:author_id]
      current_author = Author.find(session[:author_id])
    end
  end

  def logged_in?
    if current_author != nil
      true
    else
      false
    end
  end

  def landing
    @submissions = Submission.all
    render "/layouts/landing.html.erb"
  end

  def analytics
    @submissions = Submission.submission_count
    @total_reviews = Review.total_reviews
    @most_reviewed_submission = Submission.most_reviewed_title
    @total_authors = Author.author_count
    @top_contributor = Author.top_contributor.pen_name
    @most_popular_genre = Genre.most_submitted.name
    render "/layouts/analytics.html.erb"
  end

end
