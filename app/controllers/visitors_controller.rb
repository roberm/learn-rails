class VisitorsController < ApplicationController

	def new
		@owner = Owner.new

		#render 'visitors/new'
		#render action: 'new'
	end

end
