class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @topics.sort_by!{|t| t.order}
    @ranks = Rank.all
  end

  def new
    @topic = Topic.new
    @ranks = Rank.all
  end

  def create
    @topic = Topic.new(params[:topic])
    if Topic.first
      @topic.order = Topic.all.max_by{|t| t.order}.order+1
    else
      @topic.order = 1
    end
    if @topic.save
      redirect_to(:action => 'index', :notice => 'Topic was successfully created.')
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end
end
