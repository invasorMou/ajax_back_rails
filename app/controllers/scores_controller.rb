class ScoresController < ApplicationController
  def  new
    @score = Score.new
  end
  
  def create
    score = Score.new(score_params)
    if score.save
      respond_to do |format|
        format.json { render json: score.as_json}
      end
    end
  end
  
  def index
    @scores = Score.order(points: :desc)
    render json: @scores
  end
  
  private
  
  def score_params
    params.require(:score).permit(:name, :points)
  end
end

