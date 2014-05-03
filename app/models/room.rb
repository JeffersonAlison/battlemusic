class Room < ActiveRecord::Base
  belongs_to :tool
  belongs_to :user
  attr_accessible :name, :type
end
