class PostsController < ApplicationController
  before_action :set_post, except: [:new, :create, :index]
  before_action :authorize!, except: [:show, :index]

  def new
    @users = User.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def index
    # byebug
    @posts = Post.all
  end

  def show
  end

  def edit
    @users = User.all
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.user_id == current_user.id
      @post.destroy
    else
      flash[:notice] = "You can only mess with your own stuff."
    end
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :tag_names, :content, :published_at)
  end
end
