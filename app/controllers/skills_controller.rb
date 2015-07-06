class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(volunteer_params)
  end

  def edit
    @skill = set_skill
  end

  def update
    @skill = set_skill
    if @skill.update(skill_params)
      redirect_to skill_path(@skill), notice: "Skill updated"
    else
      render "edit"
    end
  end

  def show
    @skill = set_skill
  end

  def destroy
    @skill = set_skill
    @skill.destroy
    redirect_to skills_path
  end

  private

  def set_skill
    Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name)
  end

end
