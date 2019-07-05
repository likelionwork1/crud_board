class HomesController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    post = Post.new
    post.title = params[:f_title]
    post.content = params[:f_content]
    post.writer = params[:f_writer]
    post.password = params[:f_password]
    post.save
    
    redirect_to '/homes/index'
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.title = params[:f_title]
    post.content = params[:f_content]
    post.writer = params[:f_writer]
    post.password = params[:f_password]
    post.save
    
    redirect_to '/homes/index'
  end

  def delete
    post = Post.find(params[:id])
    post.destroy
    
    redirect_to '/homes/index'
  end
end
