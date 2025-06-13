class HomeController < ApplicationController
  allow_unauthenticated_access only: [:index]
  def index
    @disciplines = Discipline.all
    @disciplines = @disciplines.order(:name) if @disciplines.present?
  end
end
