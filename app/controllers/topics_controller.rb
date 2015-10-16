class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  

	def new
		 @topics = Topic.new
	end

  def edit
    @topics = Topic.find(params[:id])
  end

  def create
    @topics = Topic.new(params.require(:topic).permit(:title))
    @topics.save
    
    if @topics.save
      redirect_to topics_path
    else
      render 'new'
    end
  end

  def update
    @topics = Topic.find(params[:id])
 
    if @topics.update(topics_params)
    redirect_to @topics
    else
    render 'edit'
    end
  end

  def show
    @topics = Topic.find(params[:id])
  end

end

