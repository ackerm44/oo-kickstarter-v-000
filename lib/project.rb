class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def self.find(backer)
    backer.backed_projects.detect {|p| p != self}

  def add_backer(backer)
    @backers << backer
    ||backer.back_project(self) 
    end
  end

end
