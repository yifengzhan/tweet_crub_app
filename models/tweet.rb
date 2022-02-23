def all_tweets
    run_sql("SELECT * FROM tweets ORDER BY id;")
end


def create_tweet(date, tweet, link, one_min_bt, five_min_at, ten_min_at)
    run_sql("INSERT INTO tweets(date, tweet, link, one_min_bt, five_min_at, ten_min_at) VALUES($1, $2, $3, $4, $5, $6)", [date, tweet, link, one_min_bt, five_min_at, ten_min_at])
end



def get_tweet(id)
    run_sql("SELECT * FROM tweets WHERE id = $1", [id])[0]
end


def update_tweets(id, date, tweet, link, one_min_bt, five_min_at, ten_min_at)
    run_sql("UPDATE tweets SET date = $2, tweet = $3, link = $4, one_min_bt = $5, five_min_at = $6, ten_min_at = $7 WHERE id = $1", [id, date, tweet, link, one_min_bt, five_min_at, ten_min_at])
end


def  delete_tweets(id)
run_sql("DELETE FROM tweets WHERE id = $1", [id])
end