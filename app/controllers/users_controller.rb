class UsersController < ApplicationController
#GET /users


  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end

end
