class SessionsController < ApplicationController 

    # helper_method :destroy

    def new
        render :new
    end

    def create 
        @author = Author.find_by(email: params[:email])
        if @author && @author.authenticate(params[:password])
            session[:author_id] = @author.id
            redirect_to author_path(@author)
        else 
            flash[:notice] = "You must create an account!"
            redirect_to new_author_path
        end
    end

    def destroy 
        session.delete :author_id
        redirect_to login_path
    end
end


