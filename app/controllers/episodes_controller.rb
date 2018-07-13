class EpisodesController < ApplicationController

before_action :get_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
      if @episode.valid?
        @episode.save
        redirect_to episode_path(@episode)
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    @episode.update(episode_params)
    if @episode.valid?
      @episode.save
      redirect_to episode_path(@episode)
    else
      render :edit
    end
  end

  def destroy
    @episode.destroy
  end

  private

  def get_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:number, :guest_rating)
  end 
end
