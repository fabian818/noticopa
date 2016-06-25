class Api::MatchesController < ApplicationController
	def index
		@matches = Tournament.find(params[:tournament_id]).matches
	end

	def show
	end
end
