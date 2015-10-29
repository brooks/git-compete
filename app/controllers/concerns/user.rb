class User
  require 'rest-client'
  attr_accessor :raw, :repos, :name, :total_stars, :average_stars, :error_message
  
  def initialize(username)
    @name = username
    @raw = JSON.parse(RestClient.get("https://api.github.com/users/#{username}/repos"))
    initialize_user
  rescue
    @error_message = "was not found"
    @average_stars = 0
  end

  def status(competitor)
    return "winner" if self.average_stars > competitor.average_stars
    return "loser" if self.average_stars < competitor.average_stars
    return "tie" if self.average_stars == competitor.average_stars
  end

  def initialize_user
    if @raw.empty?
      @average_stars = 0
      @error_message = "has no repositories"
    else
      @repos = @raw.map{|repo| Repo.new(repo)}
      @total_stars = @repos.map(&:stars).inject(0,:+)
      @average_stars = @total_stars/@repos.length.to_f
    end
  end

end