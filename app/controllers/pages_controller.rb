class PagesController < ApplicationController
  def acceuil
    @current_page = 'acceuil'
  end

  def horaires
    @current_page = 'horaires'
  end

  def tarifs
    @current_page = 'tarifs'
  end

  def sports
    @current_page = 'sports'
  end
end
