class StartupsController < ApplicationController
  before_action :authenticate_user!
  def show
    @startup = Startup.find(params[:id])
    @teams = @startup.teams
    @galleries = @startup.galleries
    @decks = @startup.decks
    @attachments = @startup.attachments
  end
end