module ElixirApp
  class JobWorker
    include Sidekiq::Worker
  end
end
