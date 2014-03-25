module EspnHelper
  def headlines_grabber
    info = []
    response = HTTParty.get("http://api.espn.com/v1/sports/basketball/mens-college-basketball/news/headlines/featured?apikey=#{ENV["ESPN_KEY"]}")
    #@pretty_response = JSON.pretty_generate(@response)
    hash = JSON.parse(response.body)["headlines"]
    hash.each do |story|
      info << { headline: story["headline"], link: story["links"]["web"]["href"]}
    end
    info
  end

  module_function :headlines_grabber
end
