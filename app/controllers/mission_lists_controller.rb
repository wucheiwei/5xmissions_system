class MissionListsController < ApplicationController
   
  def index
    @mission=MissionList.all
  end
  
  def new
    @mission= MissionList.new
  end
  
  def create
    mission= MissionList.new(mission_params)
    if mission.due_date<mission.start_date
      redirect_to new_mission_list_path, notice:'開始時間需早於結束時間'
    else  
      if mission.save
        redirect_to root_path, notice:'任務建立成功'
      else
     #
      end
    end
  end

  private
  def mission_params
    params.require(:mission_list).permit(:task, :start_date, :due_date)
  end

  
end
