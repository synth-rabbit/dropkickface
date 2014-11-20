class AdminController < ApplicationController
  before_action :require_user
  def index
    @comic = Comic.new
    @post = Post.new
  end
end
