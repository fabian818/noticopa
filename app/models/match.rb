class Match < ActiveRecord::Base
	belongs_to :tournaments
	has_many :details
	has_many :teams, through: :details

	def first_team_name
		self.teams.order(:id).first.name
	end

	def second_team_name
		self.teams.order(:id).last.name
	end

	def first_team_score
		self.details.order(:id).first.score
	end

	def second_team_score
		self.details.order(:id).last.score
	end

	def finished
		self.details.first.type.nil? ? false : true
	end

	def winning_team_name
		Team.joins(details: :type).where("types.points = 3 and details.match_id = ?", self.id).last.name rescue nil
	end
end
