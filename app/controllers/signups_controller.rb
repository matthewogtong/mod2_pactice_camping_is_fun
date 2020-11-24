class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        signup = Signup.create(signup_params)
        camper = Camper.find(signup_params[:camper_id])

        if signup.valid?
            redirect_to camper_path(camper)
        else
            flash[:my_errors] = signup.errors.full_messages
            redirect_to new_signup_path
        end
    end

    private

    def signup_params
        params.require(:signup).permit(:time, :activity_id, :camper_id)
    end
end