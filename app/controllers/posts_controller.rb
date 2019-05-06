class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :check_admin, only: [:edit, :update, :destroy]
  def index
    @current_page = 'blog'
    @posts = Post.all
  end

  def show
  end

  def new
    @current_page = "admin"
    @post = Post.new
  end

  def create
    @current_page = "admin"
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.valid?
      @post.save
      redirect_to admin_path
      flash[:notice] = 'Le poste à bien été créé.'.html_safe
    else
      redirect_to admin_path
      flash[:alert] = 'Erreur lors de la création du poste.'.html_safe
    end
  end

  def edit
    @current_page = "admin"
  end

  def update
    @current_page = "admin"
    if @post.valid?
      @post.update(post_params)
      redirect_to admin_path
      flash[:notice] = 'Le poste à bien été mis à jour.'.html_safe
    else
      redirect_to admin_path
      flash[:alert] = 'Erreur lors de la mise à jour du poste.'.html_safe
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_path
    flash[:notice] = 'Le poste à bien été supprimé.'.html_safe
  end

  private

  def check_admin
    if user_signed_in?
      if !current_user.admin
        redirect_to root_path
        flash[:alert] = 'Vous devez être administrateur pour accèder à cette page.'.html_safe
      end
    else
      redirect_to root_path
      flash[:alert] = 'Vous devez être connecté pour accèder à cette page.'.html_safe
    end
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:titre, :titre_secondaire, :description, :image).to_h
  end
end
