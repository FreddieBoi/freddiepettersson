class Job < ActiveRecord::Base
  include ActionView::Helpers::DateHelper
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :place

  attr_accessible :title, :description, :started_at, :ended_at, :place

  validates :place, :presence => true
  validates :title, :presence => true
  validates :started_at, :presence => true
  # Get the working period as properly formatted string (:started_at - :ended_at)
  # Only showing year and month. The word "Present" is used if :ended_at is null.
  def period
    "#{self.started_at.strftime('%B %Y')} - #{self.ended_at.blank? ? "Present" : self.ended_at.strftime('%B %Y')}"
  end

  # Get the working period length as properly formatted string
  def period_length
    distance_of_time_in_words(self.ended_at.blank? ? DateTime.now : self.ended_at, self.started_at.prev_month)
  end
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
#  place_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  slug        :string(255)
#

