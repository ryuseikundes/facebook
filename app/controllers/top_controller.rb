class TopController < ApplicationController
  def index
    @topics = Topic.all
  end


end
