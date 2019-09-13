class Project
  attr_accessor :title
  attr_reader :backers
  
  # @@all = []
  
  def initialize(title)
    @title = title
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    if !backer.backed_projects.include?(self)
      backer.backed_projects << self
    end 
  end
end 