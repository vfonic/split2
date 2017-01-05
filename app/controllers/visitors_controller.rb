class VisitorsController < ApplicationController
  layout :get_theme_file_path

  def index
  end

  private
    def get_theme_file_path
      '../visitors/visitors'
    end
end
