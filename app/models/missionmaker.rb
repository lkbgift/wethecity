class Missionmaker < ActiveRecord::Base
  attr_accessible :description, :sponsor, :element, :name, :participation, :tools
end
