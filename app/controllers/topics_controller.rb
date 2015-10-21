class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def show
    @topics = Topic.find(params[:id])
  end

	def new
		 @topics = Topic.new
	end

  def edit
    @topics = Topic.find(params[:id])
  end

  def create
    @topics = Topic.new(params.require(:topic).permit(:title, :text))
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


  def destroy
    @topics = Topic.find(params[:id])
    @topics.destroy
 
    redirect_to topics_path
  end

end

