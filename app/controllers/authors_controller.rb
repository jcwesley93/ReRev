class AuthorsController < ApplicationController

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
        #include some validations
        @author = Author.create(author_params)
        if @author.valid? 
            session[:author_id] = @author.id
            redirect_to @author
        end
    end

    def edit
    end

    def update
        #include some validations
        @author.update(author_params)
        redirect_to @author
    end

    # def destroy
    #     @author.destroy
    #     redirect_to '/' #this is the homepage
    # end

    private

    def author_params
        params.require(:author).permit(:name, :email, :pen_name, :password, :location)
    end

    def get_author
        @author = Author.find(params[:id])
    end


end
