get '/' do
dogecoin_tweets = all_tweets()

erb :'tweets/index', locals: {
    dogecoin_tweets: dogecoin_tweets
}
end


get '/tweets/new' do
erb :'tweets/new'
end


post '/tweets' do
date = params["date"]
tweet = params["tweet"]
link = params["link"]
one_min_bt = params["one_min_bt"]
five_min_at = params["five_min_at"]
ten_min_at = params["ten_min_at"]

create_tweet(date, tweet, link, one_min_bt, five_min_at, ten_min_at)
redirect '/'
end



get '/tweets/:id/edit' do
id = params["id"]
tweet = get_tweet(id)

erb :'tweets/edit', locals: {
    tweet: tweet
}
end



put '/tweets/:id/update' do
id = params["id"]
date = params["date"]
tweet = params["tweet"]
link = params["link"]
one_min_bt = params["one_min_bt"]
five_min_at = params["five_min_at"]
ten_min_at = params["ten_min_at"]

update_tweets(id, date, tweet, link, one_min_bt, five_min_at, ten_min_at)
redirect '/'
end




delete '/tweets/:id' do
id = params['id']

delete_tweets(id)
redirect '/'
end