class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @plant = Plant.find(params[:plant_id])
    @user.plants << @plant
    render json: @user.plants
  end

  def destroy
    @user = User.find(params[:id])
    @plant = Plant.find(params[:plant_id])
    @user.plants.delete(@plant)
    render json: @user.plants
  end
end
