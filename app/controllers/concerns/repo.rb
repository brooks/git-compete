class Repo

  attr_accessor :name, :stars

  def initialize(raw)
    @name = raw["name"]
    @stars = raw["stargazers_count"]
  end

end