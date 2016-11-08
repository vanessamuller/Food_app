class MenuController < ApplicationController
  def index
    ingredients = params[:i]
    page = params[:y]
    @profile = HTTParty.get('http://www.recipepuppy.com/api/?i=onions,garlic,%20chicken&p=1').parsed_response
    @profile = @profile['data']['pins'].map do |x|
      {img_url: x['images']['237x']['url'],
      link: x['link']}

    end
    p @profile
  end
end
