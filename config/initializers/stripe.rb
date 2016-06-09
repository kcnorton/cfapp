if Rails.env.production?
	Rails.configuration.stripe = {
		:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
		:secret_key => ENV['STRIPE_SECRET_KEY']
	}
else
	Rails.configuration.stripe = {
		:publishable_key => 'pk_test_1CcYVYFQqBMTixI9Pl1CYrAy',
		:secret_key => 'sk_test_tqToZYwEaBNQcE5lMilW0jez'
	}
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]