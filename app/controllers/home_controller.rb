class HomeController < ApplicationController
  
  # just a homepage
  def index
    @users = User.find(:all, :order => 'created_at DESC', :limit => 20, :conditions => "activated_at is not null")
    @convos = Conversation.find(:all, :order => 'created_at DESC', :limit => 10, :conditions => "abuse_report_id is null and personal_conversation = 0")
  end
  
  def terms
  end
  
end
