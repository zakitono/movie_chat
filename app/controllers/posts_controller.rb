class PostsController < ApplicationController
  before_action :sign_in_required, only: [:show, :new]
  
  def index
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
        redirect_to action: :'index'
    else
        render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.present?
      @post.destroy
      redirect_to request.referer
    end
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
