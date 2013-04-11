Rails.configuration.stripe = {
  :publishable_key => 'pk_test_ZrllAHn8bZX7CehK5SwcHkNA',
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

