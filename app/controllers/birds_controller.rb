class BirdsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @current_user = current_user
    @birds = Bird.with_attached_profile_image.order(created_at: :asc)
  end

  def show
    @current_user = current_user
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    puts @bird
    if @bird.save
      flash[:success] = "Specie successfully created"
     redirect_to :birds
   else
     # flash[:notice] = @bird.errors.full_messages
     render :new
   end
  end

  def edit
    puts params[:id]
    @bird = Bird.find params[:id]
  end

  def update
    @bird = Bird.find params[:id]
    if @bird.update(bird_params)
      redirect_to bird_path(@bird)
    else
      render :edit
    end
  end

  def destroy
    bird = Bird.find params[:id]
    bird.destroy
    redirect_to :birds, notice: "The bird has been destroyed successfully"
  end

  protected

  def bird_params
    params.require(:bird).permit(:popular_name, :cientific_name, :description, :status, :size, :profile_image, specie_images: [])
  end
end
