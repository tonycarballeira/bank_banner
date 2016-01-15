class ControlsController < ApplicationController
  before_action :set_control, only: [:show]


  def new
      @control = Control.new
      @params = params

    if params['control'] && params['control']['marker'] == 'review'
      @control = Control.new(control_params)
      @control.save 
    
      url = request.url + "?done=true"
      redirect_to(url)
    end
  end

  def index
    @controls = Control.all
  end

private

  def set_control
    @control = Control.find(params[:id])
  end
   
  def control_params
    params.require(:control).permit(:name, :email, :ost_id, :list, :marker)
  end

end