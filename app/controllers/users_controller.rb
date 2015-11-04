class UsersController < ApplicationController
  def new
     @topic = Topic.new
  end

  def create
    @topic = Topic.new(params.require(:topic).permit(:title, :text))
    @topic.save

    if @topic.save
      redirect_to topics_path
    else
      render 'new'
    end
  end

end
