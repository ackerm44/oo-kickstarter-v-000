class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def find(backer)
    backer.backed_projects.detect {|p| p != self}

  def add_backer(backer)
    @backers << backer
    find(backer) || backer.back_project(self)
    end
  end

end
