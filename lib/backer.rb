require 'pry'

class Backer
attr_accessor :name, :backed_projects


def initialize(name)
  @name = name
  @backed_projects = []
end

def projects
  @backed_projects
end

def back_project(title)
  @backed_projects << title
  Project.add_backer(self)
end


end
