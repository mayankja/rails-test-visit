class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    if User.import(params[:file])
      flash[:notice] = 'Data uploaded successfully'
    else
      flash[:error] = 'File not found'
    end
    redirect_to root_url
  end
end
