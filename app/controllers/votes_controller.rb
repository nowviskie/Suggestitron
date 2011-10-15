class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    if vote.save
      flash[:message] = 'saved'
    else
      flash[:message] = 'oh noes!'
    end
    redirect_to(topics_path)
  end
end
