class Job < ActiveRecord::Base
  has_one :place, :dependent => :destroy

  attr_accessible :title, :description, :started_at, :ended_at, :place
end
# == Schema Information
#
# Table name: jobs
#
#  id          :integer         not null, primary key
#  title       :string(255)     not null
#  description :text
#  started_at  :date            not null
#  ended_at    :date
#  created_at  :datetime
#  updated_at  :datetime
#

