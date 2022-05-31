require 'rails_helper'

describe Movie, :vcr => true do
  it 'returns a 200 sucess header when the api call is made' do
    response = Movie.get_movie("thor")
    expect(response.code).to(eq(200))
  end

  it 'returns the year the movie was made' do
    response = Movie.get_movie("thor")
    expect(response["Year"]).to(eq("2011"))
  end
end