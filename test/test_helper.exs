ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Flog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Flog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Flog.Repo)

