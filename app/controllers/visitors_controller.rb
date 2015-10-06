class VisitorsController < ApplicationController

	def new_old
		@owner = Owner.new

		# Flash message
		# -------------

		# When redirect
		#flash[:notice] = 'Notice message'
		#flash[:alert] = 'Alert message'

		# When render
		#flash.now[:notice] = 'Notice message'
		#flash.now[:alert] = 'Alert message'

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

	def new
		@visitor = Visitor.new
	end

	def create

		@visitor = Visitor.new(secure_params)

		if @visitor.valid?

			@visitor.subscribe

			flash[:notice] = "Signed up #{@visitor.email}"

			redirect_to root_path
		else
			render :new
		end
	end

	private

	def secure_params
		params.require(:visitor).permit(:email)
	end

end
