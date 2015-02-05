class UsersController <ApplicationController
  #before_action :set_blog_post only:[:index]
  def index
    @users= User.all
    @user= User.new
  end

  def create
    User.create(user_params)
    redirect_to users_path

  end

  private

  def set_users
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :post)
  end


end
