class AuthorsController < ApplicationController
    before_action :authorized, only: [:edit, :update, :destroy]
    before_action :get_author, only: [:show, :edit, :update, :destroy]

    def index
      @authors = Author.all
    end

    def show
      @author = Author.find(params[:id])
      if @author != current_author
        render 'public_profile'
      else
        render 'private_profile'
      end
    end

    def new
      @author = Author.new
    end

    def create
        @author = Author.create(author_params)
        if @author.save
            session[:author_id] = @author.id
            redirect_to @author
        else
          render :new
        end
    end

    def edit
      if @author == current_author
        render :edit
      end
    end

    def update
      if @author == current_author
        @author.update(author_params)
        if @author.save
          redirect_to @author
        else
          render :edit
        end
      end
    end

    # def destroy
    #   @author.destroy
    #   redirect_to '/', alert: "Account deleted. Sorry to see you go."
    # end

    private

    def author_params
        params.require(:author).permit(:name, :email, :pen_name, :password, :location)
    end

    def get_author
        @author = Author.find(params[:id])
    end

end
