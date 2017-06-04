class CreateEstimates < ActiveRecord::Migration[5.0]
  def change
    create_table :estimates do |t|
      t.string :email
      t.string :phone
      t.boolean :work_with_us
      t.boolean :reg_email
      t.boolean :reg_social
      t.boolean :reg_none
      t.boolean :app_web
      t.boolean :app_mobile
      t.boolean :app_vr
      t.boolean :feat_onboarding
      t.boolean :feat_admin
      t.boolean :feat_autoemail
      t.boolean :feat_rating
      t.boolean :feat_social
      t.boolean :feat_gamify
      t.boolean :feat_photos
      t.boolean :feat_payment
      t.boolean :feat_messaging
      t.boolean :feat_video
      t.boolean :feat_gps
      t.boolean :feat_places
      t.boolean :feat_schedule
      t.boolean :feat_notify
      t.boolean :feat_health
      t.boolean :feat_dashboard
      t.boolean :feat_ads
      t.boolean :feat_feedback
      t.boolean :feat_search
      t.boolean :feat_audio
      t.boolean :feat_tasklist
      t.boolean :feat_activityfeed
      t.boolean :feat_sms
      t.boolean :feat_ordering
      t.boolean :api
      t.boolean :api_unsure
      t.boolean :extra_website
      t.boolean :extra_appicon
      t.boolean :extra_logo
      t.integer :timeline
      t.string :public_token

      t.timestamps
    end
  end
end
