class ScoresController < ApplicationController
  def  new
    @score = Score.new
    @scores = Score.order(points: :desc)
  end
  
  def create
    score = Score.new(score_params)
    if score.save
      respond_to do |format|
        format.json { render json: score.as_json}
      end
    end
  end
  
  private
  
  def score_params
    params.require(:score).permit(:name, :points)
  end
end

