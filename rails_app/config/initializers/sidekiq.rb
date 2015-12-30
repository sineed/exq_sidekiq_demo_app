def elixir_env
  case Rails.env
  when "development" then "dev"
  when "test" then "test"
  when "production" then "prod"
  end
end

redis_options = {
  namespace: "exq:#{elixir_env}",
  url: "redis://127.0.0.1:6379"
}

Sidekiq.configure_client do |config|
  config.redis = redis_options
end
