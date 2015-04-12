class AudiosController < ApplicationController
  before_action :set_audio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index
    @audios = Audio.all
  end

  def show
  end


  def new
    @audio = Audio.new
  end

  def edit
  end

  def create
    @audio = Audio.new(audio_params,current_user.id)

    respond_to do |format|
      if @audio.save
        format.html { redirect_to @audio, notice: 'Audio was successfully created.' }
        format.json { render :show, status: :created, location: @audio }
      else
        format.html { render :new }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @audio.update(audio_params)
        format.html { redirect_to @audio, notice: 'Audio was successfully updated.' }
        format.json { render :show, status: :ok, location: @audio }
      else
        format.html { render :edit }
        format.json { render json: @audio.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @audio.destroy
    respond_to do |format|
      format.html { redirect_to audios_url, notice: 'Audio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_audio
      @audio = Audio.find(params[:id])
    end

    def audio_params
      params.require(:audio).permit(:title, :description, :sound, :user_id)
    end
end
