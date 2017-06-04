class Estimate < ApplicationRecord
	after_save :generate_token

	PRICELIST = {
				onboarding: 4950,
	      admin: 24750,
	      autoemail: 1650,
	      rating: 3300,
	      social: 3300,
	      gamify: 11500,
	      photos: 1650,
	      payment: 6600,
	      messaging: 4950,
	      video: 3300,
	      gps: 1650,
	      places: 3300,
	      schedule: 6600,
	      notify: 3300,
	      health: 6600,
	      dashboard: 6600, 
	      ads: 4950, 
	      feedback: 6600, 
	      search: 3300, 
	      audio: 2475, 
	      tasklist: 3300,
	      activityfeed: 6600, 
	      sms: 3300, 
	      ordering: 6600,
	      reg_email: 1650,
	      reg_social: 3300,
	      api: 9900,
	      website: 3000,
	      appicon: 300,
	      logo: 400
	    }

	def feature_set
		return {
			onboarding: feat_onboarding,
      admin: feat_admin,
      autoemail: feat_autoemail,
      rating: feat_rating,
      social: feat_social,
      gamify: feat_gamify,
      photos: feat_photos,
      payment: feat_payment,
      messaging: feat_messaging,
      video: feat_video,
      gps: feat_gps,
      places: feat_places,
      schedule: feat_schedule,
      notify: feat_notify,
      health: feat_health,
      dashboard: feat_dashboard, 
      ads: feat_ads, 
      feedback: feat_feedback, 
      search: feat_search, 
      audio: feat_audio, 
      tasklist: feat_tasklist,
      activityfeed: feat_activityfeed, 
      sms: feat_sms, 
      ordering: feat_ordering
		}
	end

	def total_price
		price = 0
		# First total up all feature costs
		for f in feature_set.select{ |k,v| v }.keys
			price += PRICELIST[f]
		end

		# Add user registration cost
		price += PRICELIST[:reg_email] if reg_email
		price += PRICELIST[:reg_social] if reg_social

		# Add API
		price += PRICELIST[:api] if api

		# Add extras
		price += PRICELIST[:website] if extra_website
		price += PRICELIST[:appicon] if extra_appicon
		price += PRICELIST[:logo] if extra_logo

		return price
	end

	def step1done
		return (app_web.present? || app_mobile.present? || app_vr.present?)
	end

	def step2done
		return step1done && (reg_email.present? || reg_social.present? || reg_none.present?)
	end

	def step3done
		return step2done && (feature_set.select{ |k,v| v }.count > 0)
	end

	def step4done
		return step3done && (!api.nil? || api_unsure.present?)
	end

	def step5done
		return step4done && (!extra_website.nil? && !extra_appicon.nil? && !extra_logo.nil?)
	end

	def step6done
		return step5done && (!timeline.nil?)
	end

	private

		def generate_token
	    return unless public_token.blank?
	    update public_token: SecureRandom.hex(4)
	  rescue ActiveRecord::RecordNotUnique, ActiveRecord::RecordInvalid
	    retry
	  end


	  def pricelist
			{
				onboarding: 4950,
	      admin: 24750,
	      autoemail: 1650,
	      rating: 3300,
	      social: 3300,
	      gamify: 11500,
	      photos: 1650,
	      payment: 6600,
	      messaging: 4950,
	      video: 3300,
	      gps: 1650,
	      places: 3300,
	      schedule: 6600,
	      notify: 3300,
	      health: 6600,
	      reg_email: 1650,
	      reg_social: 3300
	    }
		end

end
