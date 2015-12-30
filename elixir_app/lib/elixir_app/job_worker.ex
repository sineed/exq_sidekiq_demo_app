defmodule ElixirApp.JobWorker do
  def perform(%{"id" => id, "title" => title, "value" => value}) do
    IO.puts("JobWorker called with id: #{id}, title: #{title}, value: #{value}")
  end
end
