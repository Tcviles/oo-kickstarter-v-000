class Project
  attr_accessor :backer, :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer (backer)
    @backers<< backer
    backer.backed_projects << self unless backer.backed_projects.include?(self)
  end
end
