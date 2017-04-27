class Estimate < ApplicationRecord
	after_save :generate_token

	private

		def generate_token
	    return unless public_token.blank?
	    update public_token: SecureRandom.hex(4)
	  rescue ActiveRecord::RecordNotUnique, ActiveRecord::RecordInvalid
	    retry
	  end

end
