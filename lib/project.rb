class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_project(self)

  end

end
