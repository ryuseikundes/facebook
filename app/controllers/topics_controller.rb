class TopicsController < ApplicationController
　before_action :authenticate_user!
  before_action :set_topic, only: [:edit, :update, :destroy]

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topics_params)
    if @topic.save
      redirect_to root_path, notice: " 投稿しました！"
    else
      render 'new'
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topics_params)
    redirect_to root_path, notice: "編集しました！"
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path, notice: "消去しました！"
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :content)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end
end
