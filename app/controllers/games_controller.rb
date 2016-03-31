class GamesController < ApplicationController
  before_action :authenticate_user!

  def create
    @game = Game.new
    if @game.save
      flash[:notice] = "Game created!"
    else
      flash[:error] = "Failed to create game!"
    end
    redirect_to root_path
  end
end