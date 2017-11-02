class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    if (self.project.add_backer.nil?)
      project.add_backer(self)
    end
  end



end
