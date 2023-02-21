class ChatroomController < ApplicationController
    before_action :require_user

    def index
        @messages = Message.custom_display
    end
end
