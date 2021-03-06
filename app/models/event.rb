class Event < ActiveRecord::Base
  self.inheritance_column = nil
  
  belongs_to :web_property
  belongs_to :user

  def self.total_on(date)
    where("date(created_at) = ?", date).count(:id)
  end
end
