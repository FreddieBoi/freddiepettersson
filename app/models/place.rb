class Place < ActiveRecord::Base
  belongs_to :job

  attr_accessible :title, :location, :website, :job

  validates :job, :presence => true
end
# == Schema Information
#
# Table name: places
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  location   :string(255)     not null
#  website    :string(255)
#  job_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

