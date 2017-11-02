class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if backer.backed_projects != self
      backer.back_project(self)
    end
  end

end
