class CommentsController < ApplicationController
  before_filter :set_post, only: [:show]
  skip_before_filter :create

  def index
    true
  end

  def show
    true
  end
end
