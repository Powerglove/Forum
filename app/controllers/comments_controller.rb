class CommentsController < ApplicationController
	def create
    @topics = Topic.find(params[:topic_id])
    @comment = @topics.comments.create(comment_params)
    redirect_to topics_path(@topics)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
