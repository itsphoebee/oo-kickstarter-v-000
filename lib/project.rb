require 'pry'

class Project
attr_accessor :title


def initialize(title)
  @title = title
  @backers = []
end

def backers
  @backers
end

def add_backer(name)
  @backers << name
  name.back_project(name) << self unless name.projects.include?(self)
end

end
