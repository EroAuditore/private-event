class UsersController < ApplicationController
    def show
        @events = current_user.user_events 
    end

end