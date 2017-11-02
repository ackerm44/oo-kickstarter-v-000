class Project
  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    if (backer.back_project(self).nil?)
      backer.back_project(self)
    end
  end

end
