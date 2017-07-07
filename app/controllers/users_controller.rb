class UsersController < ApplicationController
  # before_filter :authorize

  # def cool
  # end

  # def free
  # end

  def new
    @user=User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to '/', notice: 'You signUp!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password
    )
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You LogOut!'
  end
end
