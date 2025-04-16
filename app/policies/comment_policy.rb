class CommentPolicy < ApplicationPolicy
  attr_reader :current_user, :comment

  def initialize(user, photo)
    @current_user = current_user
    @comment = comment
  end


  def modify?
    current_user == comment.author 
  end

end
