class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
      @user = User.all
      #authorize! :index, User

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
      end
  end


    # GET /users/1
    # GET /users/1.json
    def show
      #authorize! :show, @user

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @user }
      end
    end


  def new
    @user = User.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end
