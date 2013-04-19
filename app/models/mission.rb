class Mission < ActiveRecord::Base
  attr_accessible :title, :description, :tools, :urban, :participation
end
