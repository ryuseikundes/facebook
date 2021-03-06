class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @topic = @comment.topic

    respond_to do |format|
      if @comment.save
        format.html { redirect_to topic_path(@topic), notice: 'コメントを投稿しました。' }
        format.json { render :show, status: :created, location: @comment }
        format.js { render :index }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @comment = Comment.find(params[:id])
   @comment.destroy
   respond_to do |format|
     format.html { redirect_to topic_path(@topic), notice: 'コメントを削除しました。' }
     format.js { render :index }
   end
 end

  def edit
    @comment = Comment.find(params[:id])
    @topic = @comment.topic
  end

  def update
    @comment = Comment.find(params[:id])
    @topic = @comment.topic
    if@comment.update(comment_params)

    redirect_to topic_path(@topic), notice:"編集しました！"

    else
    render 'edit'

    end
  end



  private
    def comment_params
      params.require(:comment).permit(:topic_id, :content)
    end
end
