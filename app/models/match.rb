class Match < ActiveRecord::Base
	belongs_to :tournaments
	has_many :details
end
