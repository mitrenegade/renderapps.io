# Preview all emails at http://localhost:3000/rails/mailers/leads_mailer
class LeadsMailerPreview < ActionMailer::Preview
	def new_lead_email
		LeadsMailer.new_lead_email(Lead.first)
	end
end
