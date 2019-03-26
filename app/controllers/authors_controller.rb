class AuthorsController < ApplicationController

    before_action :get_author, only: [:show, :edit, :update]

    def index
      @authors = Author.all
    end

    def show
      # conditional logic
      # we have private and public show pages
      # if private, show the options to edit/delete reviews/submissions
      # if public, only display reviews/submissions

    end

    def new
        @author = Author.new
    end

    def create
        #include some validations
        @author = Author.create(author_params)
        redirect_to @author
    end

    def edit
    end

    def update
        #include some validations
        @author.update(author_params)
        redirect_to @author
    end

    def destroy
        @author.destroy
        render "/" #this is the homepage
    end

    private

    def author_params
        params.require(:author).permit(:name, :email, :pen_name, :password, :location)
    end

    def get_author
        @author = Author.find(params[:id])
    end


end
