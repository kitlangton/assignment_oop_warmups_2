class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0...144]
  end

  def each
    @tweets.each do |tweet|
      yield tweet
    end
  end

end

new_tweets = Tweeter.new
new_tweets.tweet("testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting")
new_tweets.tweet("blueblueblueblueblue")


map_results = new_tweets.map do |tweet|
  tweet + "!"
end

p map_results
  

