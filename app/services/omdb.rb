class Movie
  def initialize(movie)
    @movie = movie
  end

  def self.get_movie_year
    response = HTTParty.get("https://www.omdbapi.com/?apikey=" + ENV["OMDB_API_KEY"] + "&t=" + @movie)
    response["Year"]
  end
end
