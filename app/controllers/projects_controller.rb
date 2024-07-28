class ProjectsController < ApplicationController
  def index
    @projects = Projects.all
  end
end
