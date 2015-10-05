class VisitorsController < ApplicationController

	def new
		@owner = Owner.new

		# Flash message
		# -------------

		# When redirect
		#flash[:notice] = 'Notice message'
		#flash[:alert] = 'Alert message'

		# When render
		flash.now[:notice] = 'Notice message'
		flash.now[:alert] = 'Alert message'

		# Render view
		# -----------

		#render 'visitors/new'
		#render action: 'new'

		# Without layout
		#render 'visitors/new', :layout => false
		#render action: 'new', :layout => false

		# Custom layout
		#render 'visitors/new', :layout => 'cutomlay'
	end

end
