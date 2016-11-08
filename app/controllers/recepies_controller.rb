class RecepiesController < ApplicationController
  def index
    @steakrecipes = RecipePuppy::Recipe.search_for(params[:q] || "*").with_ingredients(params[:y] || "*")
    # @steakrecipes = HTTParty.get("http://www.recipepuppy.com/"+"?i=#{:q}&q=#{:y}&p=#{:p}").parsed_response
  end
end
