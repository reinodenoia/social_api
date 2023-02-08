module Api
  class PostsController < ApplicationController
    before_action :set_post, only: %i[like]
    before_action :set_like, only: %i[dislike]

    def index
      @posts = Post.all
    end

    def like
      @like = Like.new(post: @post)

      if @like.save
        render partial: @post 
      else
        render json: @like.errors, status: :unprocessable_entity
      end
    end

    def dislike
      render partial: @like.post if @like.destroy
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end

    def set_like
      @like = Like.find_by(post_id: params[:id])      
    end
  end
end