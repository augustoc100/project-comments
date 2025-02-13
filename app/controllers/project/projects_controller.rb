class Project::ProjectsController < ApplicationController
  def index
    @projects = Project::Project.all
  end
end
