module MyEnumerable
  def map
    new_array = []
    each do |item|
      new_array << item
    end
    new_array
  end
end

class Tweeter
  include Enumerable
  include Comparable

  def map
    new_array = []
    each do |item|
      new_array << item
    end
    new_array
  end

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

  def length
    @tweets.length
  end

  def <=>(other_tweeter)
    length <=> other_tweeter.length
  end
end

new_tweets = Tweeter.new
new_tweets.tweet("testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting")
new_tweets.tweet("blueblueblueblueblue")

other_tweets = Tweeter.new
other_tweets.tweet("blueblueblueblueblue")
other_tweets.tweet("blueblueblueblueblue")
other_tweets.tweet("blueblueblueblueblue")

new_tweets < other_tweets # => true

map_results = new_tweets.map do |tweet|
  tweet + "!"
end

p map_results

# >> ["testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtest", "blueblueblueblueblue"]
