class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.save
            flash[:success] = "Successfully posted!"
            redirect_to posts_path
        else
            render 'new'
        end
    end

    def destroy
    end

    # Private methods
    private

        def post_params
            params.require(:post).permit(:header, :content)
        end

end
