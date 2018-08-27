if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_8zBN2G7qLZEfbbE0gf6rEe54',
    secret_key: '	sk_test_e0mnEBbxFOOQ56KsE09BkkSn'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
