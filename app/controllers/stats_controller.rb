class StatsController < ApplicationController

  def index
    
  end

  def new
    @stat = Stat.new
  end

  def create
    @stat = Stat.create(stat_params)
    if @stat.save
      redirect_to fielders_path
    else
      render :new
    end
  end
  
  private
  def stat_params
    params.require(:stat).permit(:date, :text, :position_id, :batting_order_id, :kiyou_id).merge(user_id: current_user.id)
  end


end
