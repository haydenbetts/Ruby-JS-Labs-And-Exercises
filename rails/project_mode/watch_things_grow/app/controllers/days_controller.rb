class DaysController < ApplicationController
  def show
    if params[:growing_thing_id]
      @growing_thing = GrowingThing.find_by(id: params[:growing_thing_id])
      if @growing_thing.nil?
        # TODO alert not displaying
        redirect_to users_profile_path(current_user), alert: "GrowingThing not found"
      elsif @growing_thing.days.find_by(id: params[:id]).nil?
        # TODO alert not displaying
        redirect_to users_profile_path(current_user), alert: "Day not found"
      else
        @day = @growing_thing.days.find_by(id: params[:id])
      end
    else
      @day = Day.find(params[:id])
    end
  end
end
