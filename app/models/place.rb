class Place < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :jobs, :dependent => :destroy

  attr_accessible :title, :location, :website, :jobs

  validates :title, :presence => true
  validates :location, :presence => true
end
# == Schema Information
#
# Table name: places
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  location   :string(255)     not null
#  website    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#

