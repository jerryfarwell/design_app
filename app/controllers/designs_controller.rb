class DesignsController < ApplicationController
  def index
    @designs = Desin.all
  end

  def show
    @desin = Desin.find(params[:id])
  end

  def new
    @design = Design.new
  end

  def edit
    @design = Design.new
  end
end
