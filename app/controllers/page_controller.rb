class PageController < ApplicationController
  def index
  end

  def profiles
    @all_speakers = Speaker.all
    @speakers = Speaker.all.to_json

  end
end
