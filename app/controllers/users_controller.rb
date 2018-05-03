class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    if User.import(params[:file])
      redirect_to root_url, notice: 'Data uploaded successfully'
    else
      redirect_to root_url, notice: 'File not found'
    end
  end
end
