class CommentsController < ApplicationController
  def new
  end
  def create
    render plain: params.inspect
  end

end
