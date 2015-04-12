class WelcomeController < ApplicationController
  def index
    @song = Audio.last
  end

end
