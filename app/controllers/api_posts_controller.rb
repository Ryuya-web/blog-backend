class ApiPostsController < ApplicationController
    def index
        @posts = Post.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: @posts }
    end
    
    # GET /posts/1 or /posts/1.json
    def show
    @post = Post.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded the post', data: @post }
    end
end
