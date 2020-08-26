class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show

  end


  def edit

  end


  def update
    # set_post

    # @post.update(post_params)
    # redirect_to post_path(@post)

                  
    # if @post.valid?
    if @post.update(post_params)
      redirect_to @post
    else
    #   redirect_to post_path(@post)
    # else
      render :edit
    end

  end






  private

  # Can use post_params like params, prevent malicious attacks
  # Enables us to use mass assignment
  # Filter that grabs only necessary items from params
  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end


end
