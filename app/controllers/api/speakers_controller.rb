class Api::SpeakersController < ApplicationController
  def get_speakers
    render json: Speaker.all
  end

end
