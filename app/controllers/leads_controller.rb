class LeadsController < ApplicationController
	
	def create
    @lead = Lead.new(lead_params)
    if @lead.save
      LeadsMailer.new_lead_email(@lead).deliver_now
    	flash[:notice] = "Thanks! We'll be in touch shortly"
      redirect_to contact_path
    else
    	flash[:error] = "Please fill out all fields."
      redirect_to contact_path
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def lead_params
    params.require(:lead).permit(:name, :email, :topic, :message)
  end

end
