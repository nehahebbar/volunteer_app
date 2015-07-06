class OrgsController < ApplicationController
  def index
    @orgs = Org.all
  end

  def new
    @org = Org.new
  end

  def create
    @org = Org.new(Org_params)
    if @org.save
      redirect_to orgs_index_path
    else
      render "new"
    end
  end

  def edit
    @org = set_org
  end

  def update
    @org = set_org
    if @org.update(org_params)
      redirect_to org_path(@org), notice: "Organization updated"
    else
      render "edit"
    end
  end

  def show
    @org = set_org
  end

  def destroy
    @org = set_org
    @org.destroy
    redirect_to orgs_path
  end

  private

  def set_org
    Org.find(params[:id])
  end

  def org_params
    params.require(:org).permit(:name, :description, :cause, :contact)
  end

end
