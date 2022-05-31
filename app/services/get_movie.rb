class Movie
  def self.get_movie
    response = HTTParty.get("https://www.omdbapi.com/?apikey=" + ENV["OMDB_API_KEY"] + "&t=#{title}")
  end
end