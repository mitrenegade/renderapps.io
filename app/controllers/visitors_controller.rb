class VisitorsController < ApplicationController
	layout 'static', except: [:index]
	def contact
		@lead = Lead.new
	end
end
