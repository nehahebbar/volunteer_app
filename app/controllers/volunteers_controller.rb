class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to volunteers_index_path
    else
      render "new"
    end
  end

  def edit
    @volunteer = set_volunteer
  end

  def update
    @volunteer = set_volunteer
    if @volunteer.update(volunteer_params)
      redirect_to volunteer_path(@volunteer), notice: "Volunteer updated"
    else
      render "edit"
    end
  end

  def show
    @volunteer = set_volunteer
  end

  def destroy
    @volunteer = set_volunteer
    @volunteer.destroy
    redirect_to volunteers_path
  end

  private

  def set_volunteer
    Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:name, :location, :skill_ids => [])
  end

end
