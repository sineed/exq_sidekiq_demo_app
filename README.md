### Example of communication between Sidekiq and Exq

[Exq](https://github.com/akira/exq) can work alongside [Sidekiq](https://github.com/mperham/sidekiq). This demo app shows how to construct communication between these tools.

The aim is to have a Sidekiq as a client that creates jobs and Exq a a server that processes these jobs.

There are two applications here:

1. `rails_app`
2. `elixir_app`

To start you must pass these steps:

1. in Rails app:
  * `cd rails_app`
  * `bundle install` (loads all dependencies)
  * rails s (launches rails server on `localhost:3000` by default)
2. in Elixir app:
  * `cd elixir_app`
  * `mix deps.get` (loads all dependencies)
  * `mix run --no-halt` (runs our application and does not halt it so we can see `IO.puts` calls defined in `ElixirApp.JobWorker`)
3. `curl -X POST -F "job[id]=1" -F "job[title]=test213" -F "job[value]=123" 'http://localhost:3000/jobs'`

In console with hanging elixir app you must see `JobWorker called with id: 1, title: test213, value: 123`
