class UsersController < ApplicationController
  def list_users
    @users = User.all
  end

  def show_new_template

  end

  def display_other_template
    #@users = list_users
    #render 'extras/new_template'
    #render plain: "Calling_common_templates new_template"
    #render plain: params.inspect
    #  render action: :list_users
    #render partial "common_templates/new_template"
    # render html: "<h1>REndering HTML</h1>".html_safe
    #redirect_to action: :list_users
    redirect_to controller: :products, action: :new
  end

  def new_user
    @user = User.new
    render 'new_user'
  end


  def create_user
    # render plain: params[:user]
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :list_users
    else
      render action: :new_user
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :city, :gender)
  end

end

# 