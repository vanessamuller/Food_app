class MenuController < ApplicationController
  def index
    ingredients = params[:i]
    page = params[:y]
    @results = HTTParty.get('http://www.recipepuppy.com/api/?i=chicken&q=onions,garlic&p=1').parsed_response
    @results = @results['results'].map do |x|
      {title: x['title'],
      link: x['href'],
      ingredients: x['ingredients'],
      thumbnail: x['thumbnail']}
    end
    p @results
  end
end
