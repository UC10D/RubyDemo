class Api::V1::BaseController < ApplicationController

    protect_from_forgery with : null_session
    before_action : destory_session
    skip_before_action : verify_authenticity_token

    def destory_session
        request.session_options[:skip] = true
    end

    attr_accessor :current_user
end
