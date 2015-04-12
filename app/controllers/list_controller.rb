class ListController < ApplicationController
  def users
    @users = User.all
    respond_to do |format|
      format.html { render 'list/users'}
    end
  end

  def audios
    @audios = Audio.all
    respond_to do |format|
        format.html { render 'list/audios'}
    end
  end
end
