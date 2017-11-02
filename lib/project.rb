class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def find(backer)
    backer.backed_projects.detect {|p| p != self}
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
