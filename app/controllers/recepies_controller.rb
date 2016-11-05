class RecepiesController < ApplicationController
  def index
    @steakrecipes = RecipePuppy::Recipe.search_for(params[:q] || "*").with_ingredients(params[:y] || "*")
  end
end
