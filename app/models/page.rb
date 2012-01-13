class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  # Setup accessible attributes
  attr_accessible :title, :content
  # Last updated at (formatted)
  def last_updated_at
    self.updated_at.to_s(:rfc822)
  end
end
# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#

