class CalculatorController < ApplicationController
	before_action :set_estimate, except: [:app]

	layout 'static'

	def app
		@estimate = Estimate.new
	end

	def users
	end

	def features
	end

	def api
	end

	def extras
	end

	def timeline
	end

	def results
	end

	private

	def set_estimate
		# Need to add ability to access estimate through url param as well
		if Estimate.where(public_token: session[:estimate_token]).present?
			@estimate = Estimate.find_by(public_token: session[:estimate_token])
		else
			redirect_to estimate_app_path
		end
	end

end
