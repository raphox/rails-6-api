module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_post, only: %i[show update destroy]
      after_action :update_broadcast, only: %i[create update destroy]

      # GET /api/v1/posts
      def index
        @posts = Post.all

        render json: @posts
      end

      # GET /api/v1/posts/1
      def show
        render json: @post
      end

      # PATCH/PUT /api/v1/posts/1
      def update
        if @post.update(post_params)
          render json: @post
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      def update_broadcast
        posts = Post.order(updated_at: :desc).all
        ActionCable.server.broadcast('posts', {
          posts: ActiveModelSerializers::SerializableResource.new(posts).serializable_hash,
        })
      end

      # Only allow a list of trusted parameters through.
      def post_params
        params.require(:post).permit(:title, :body)
      end
    end
  end
end
