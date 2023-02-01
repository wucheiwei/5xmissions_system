class MissionList < ApplicationRecord
  validates :task, presence: true
  validates :start_date, presence: true
  validates :due_date, presence: true
#   validate :due_date_after_start_date

#   def due_date_after_start_date

#     return if due_date.blank? || start_date.blank? 
#     if due_date < start_date
#       render :new,notice: "結束時間需晚於開始時間"
#     end
#   end
  
end
