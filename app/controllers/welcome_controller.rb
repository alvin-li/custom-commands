class WelcomeController < ApplicationController
  def index
    @url = request.url.partition("/?=").last.gsub('+', ' ').gsub(/[o|O]/, 'OMEGALUL')
    render :json => { "message": @url }
  end
end
