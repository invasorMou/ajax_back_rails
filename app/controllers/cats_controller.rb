class CatsController < ApplicationController
  def index
    response = HTTParty.get 'https://cat-fact.herokuapp.com/facts'
    render json: JSON.parse(response.body)['all']
  end
end