class Api::MatchesController < ApplicationController
	def index
		@matches = Tournament.find(params[:tournament_id]).matches
	end

	def show
		@match = Match.find(params[:match_id])
	end
end
