class UsersController < ApplicationController
  def index
    @profile = HTTParty.get('https://api.pinterest.com/v3/pidgets/boards/lbastet/all-beauty-i-like/pins/').parsed_response
    @profile = @profile['data']['pins'].map do |x|
      {img_url: x['images']['237x']['url'],
      link: x['link']}

    end
    p @profile
  end
end
