class BirdsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @current_user = current_user
    @birds = Bird.all
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save
      flash[:success] = "Specie successfully created"
     redirect_to :birds
   else
     puts "HOLAAAA #{@bird.errors.full_messages}"
     flash[:notice] = @bird.errors.full_messages
     redirect_to :new_bird
   end
  end

  protected

  def bird_params
    params.require(:bird).permit(:popular_name, :cientific_name, :profile_image)
  end
end
