class CommentsController < ApplicationController
	def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    redirect_to topics_path(@topics)
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.find(params[:id])
    @comment.destroy
    redirect_to topics_path(@topic)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
