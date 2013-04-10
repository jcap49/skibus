Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_ZrllAHn8bZX7CehK5SwcHkNA'],
  :secret_key      => ENV['sk_test_wfCPRzQSQNHGb4CCA0Aw7v8r']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
