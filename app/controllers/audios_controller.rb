class AudiosController < ApplicationController
  def index
    render json: { audios: AudioSerializer.new(Audios.all) }, status: 200
  end
end
