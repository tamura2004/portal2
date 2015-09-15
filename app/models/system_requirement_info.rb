class SystemRequirementInfo < ActiveRecord::Base
  belongs_to :os_name_master
  belongs_to :java_name_master
  belongs_to :java_version_master
  belongs_to :ap_server_master
end
