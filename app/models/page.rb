class Page < ActiveRecord::Base

  # Setup accessible attributes
  attr_accessible :title, :content
  
  # Last updated at (formatted)
  def last_updated_at
    self.updated_at.to_s(:rfc822)
  end
end
