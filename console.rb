require 'pry'

require 'pg'


def run_sql(sql, sql_params = [])
  db = PG.connect(dbname: 'tweets_app_db')
  results = db.exec_params(sql, sql_params)
  db.close
  results
end


binding.pry