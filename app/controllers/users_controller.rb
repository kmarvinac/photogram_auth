class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def my_likes
    @likes = Like.all.where( :user_id => current_user.id )
    render("users/my_likes.html.erb")
  end

  def sign_in
    redirect_to("/users/sign_in")
  end

  def sign_up
    redirect_to("/users/sign_up")
  end

end
