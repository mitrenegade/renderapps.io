class EstimatesController < ApplicationController
	
	def create
    @estimate = Estimate.new(estimate_params)
    if @estimate.save
      session[:estimate_token] = @estimate.public_token
    	flash[:notice] = "Step one done"
      redirect_to estimate_users_path
    else
    	flash[:error] = "whoops"
      redirect_to :back
    end
  end

  def update
  	@estimate = Estimate.find(params[:id])
    if @estimate.update(estimate_params)
    	# Extra param for current step will be passed in order to help continuation process
    	# and keep the controller/routes condensed
    	if params[:estimate][:current_step] == 'users'
    		redirect_to estimate_features_path
  		elsif params[:estimate][:current_step] == 'features'
        redirect_to estimate_api_path
      elsif params[:estimate][:current_step] == 'api'
        redirect_to estimate_extras_path
      elsif params[:estimate][:current_step] == 'extras'
        redirect_to estimate_timeline_path
      elsif params[:estimate][:current_step] == 'timeline'
        redirect_to estimate_results_path
      else
  			raise StandardError
  		end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def estimate_params
    params.require(:estimate).permit(:email, :phone, :reg_email, :reg_social, :reg_none, :app_web, :app_mobile, :app_vr, :feat_onboarding, :feat_admin, :feat_autoemail, :feat_rating, :feat_social, :feat_gamify, :feat_photos, :feat_payment, :feat_messaging, :feat_video, :feat_gps, :feat_places, :feat_schedule, :feat_notify, :feat_health, :api, :api_unsure, :extra_website, :extra_appicon, :extra_logo, :timeline)
  end

end