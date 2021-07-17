class ApiPostsController < ApplicationController
    def index
        @posts = Post.order(created_at: :desc)
        render json: @posts, methods: [:thumbnail_image_url] 
    end
    
    # GET /posts/1 or /posts/1.json
    def show
    @post = Post.find(params[:id])
    render json: @post, methods: [:thumbnail_image_url] 
    end
end
