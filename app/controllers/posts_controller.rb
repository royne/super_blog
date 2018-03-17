class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to root_path, notice: "El post fue creado con exito"
    else
      render :new
    end
  end

  private
    def posts_params
      params.require(:post).permit(:title, :body)
    end
end
