class TopicsController < ApplicationController
  def index
  	@topic = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

	def new
		 @topic = Topic.new
	end

  def edit
    @topic = Topic.find(params[:id])
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

  def update
    @topic = Topic.find(params[:id])
 
    if @topic.update(topic_params)
    redirect_to @topic
    else
    render 'edit'
    end
  end


  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
 
    redirect_to topics_path
  end

  def topic_params
    params.require(:topic).permit(:title, :text)
  end

end

