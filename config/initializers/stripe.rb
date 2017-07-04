# Store the environment variables on the Rails.configuration object
 Rails.configuration.stripe = {
   publishable_key: ENV['pk_test_10PfQjPw0qrTFBVrH8LQ9DPM'],
   secret_key: ENV['sk_test_RXiPVl9lYsSM7tAg6bZ32Pdj']
 }

 # Set our app-stored secret key with Stripe
 Stripe.api_key = Rails.configuration.stripe[:secret_key]
