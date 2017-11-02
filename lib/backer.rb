class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  # def find(project)
  #   project.backers.detect {|p| p != self}
  # end

  def back_project(project)
    @backed_projects << project
    project.backers(self)
  end



end
