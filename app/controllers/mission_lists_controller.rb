class MissionListsController < ApplicationController
    before_action :find_mission, only: %i[edit update destroy show ]

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
  
  def edit
  end

  def update
    if @mission.update(mission_params)
      redirect_to root_path,notice: '更新成功'
    else
      render :edit  
    end      
  end

  def destroy
    @mission.destroy
    redirect_to root_path,notice: '已刪除'
  end  
  private
  def mission_params
    params.require(:mission_list).permit(:task, :start_date, :due_date)
  end

  def find_mission
    @mission = MissionList.find(params[:id])
  end
end
