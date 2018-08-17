Application.load(:dbi)

config = [testdb1: [type: :dumb],
          testdb2: [type: :dumb,
                    cache: 3],
          testdb3: [type: :dumb,
                    delayed: :mydelayed],
          testdb4: [type: :dumb,
                    migrations: :dbi_ex]]

config
|> Enum.each(fn({key, values}) -> Application.put_env(:dbi, key, values) end)

ExUnit.start()
