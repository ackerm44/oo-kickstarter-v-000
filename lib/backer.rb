class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    new_project = Project.new(project)
    puts self
    #new_project.add_backer(self)
    #end
  end



end
