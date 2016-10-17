class LeadsMailer < ApplicationMailer
	def new_lead_email(lead)
    @lead = lead
    mail(to: 'fredson@renderapps.io', subject: 'New lead')
  end
end
