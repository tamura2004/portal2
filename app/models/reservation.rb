class Reservation < ActiveRecord::Base
  belongs_to :user_info
  belongs_to :project_info
end
