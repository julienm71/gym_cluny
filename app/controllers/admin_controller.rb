class AdminController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @current_page = "admin"
    @posts = Post.all
  end
end
