class VisitorsController < ApplicationController
	layout 'static', except: [:index, :contact]
	layout 'no_nav', only: [:contact]
	def contact
		@lead = Lead.new
	end
end
