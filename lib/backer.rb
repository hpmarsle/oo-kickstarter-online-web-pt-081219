class Backer
  attr_accessor :name
  attr_reader :backed_projects
  
  # @@all = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    # @@all << self 
  end 
  
  def back_project(project)
    @backed_projects << project
    if !project.backers.include?(self)
      project.add_backer(self)
    end
  end 
end 