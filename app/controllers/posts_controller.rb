class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_topic, only: [:new, :create, :show]

	def new
		@post = Post.new
	end

  def create
    @post = current_user.posts.create(post_params)
    @post.update_attributes(topic_id: @topic.id)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    def set_post
      @post = Post.find(params[:id])
    end    

    def set_topic
      @topic = Topic.find(params[:topic_id])
    end
    
    def post_params
      params.require(:post).permit(:content, :topic_id)
    end
end