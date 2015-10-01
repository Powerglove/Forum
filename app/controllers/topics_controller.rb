class TopicsController < ApplicationController
  def index
  	@topics = Topic.all
  end

  def create
  	@topics = Topic.new(params[:topics])
 
  	@topics.save
  	redirect_to @topics
	end

	def new
		
	end
end

