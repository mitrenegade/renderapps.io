class VisitorsController < ApplicationController
	layout 'static', except: [:index, :contact]
	def contact
		@lead = Lead.new
		render layout: 'no_nav'
	end
end
