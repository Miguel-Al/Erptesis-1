class UsersController < ApplicationController

  before_action :authenticate_admin
  
  def index
    @users = User.all_except(current_user)
  end

  def create
    super
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to usuarios_ver_path, notice: "Usuario borrado."
  end

  protected

  def authenticate_admin #chequear que el rol sea el 1(admin)
    return unless current_user.rol_id!=1
    redirect_to root_path
  end
  
end
