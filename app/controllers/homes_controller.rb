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
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.writer == params[:f_writer]
      post.title = params[:f_title]
      post.content = params[:f_content]
      post.writer = params[:f_writer]
      post.password = params[:f_password]
      post.save
    end
    redirect_to '/homes/index'
  end

  def delete
    post = Post.find(params[:id])
    post.destroy
    
    redirect_to '/homes/index'
  end
  
  def delete_if
    posts = Post.where(title: params[:title])
    posts.each do |x|
      x.destroy
    end
    
    redirect_to '/homes/index'
  end  
  
end
