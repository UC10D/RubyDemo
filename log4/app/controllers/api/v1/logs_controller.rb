class Api::V1::LogsController < ApplicationController

    def index
        Logger.debug("hahahaha   i m debug")
        Logger.info("hahahaha   i m info")
        Logger.warn("hahahaha   i m warn")
        Logger.error("hahahaha   i m error")
        Logger.fatal("hahahaha   i m fatal")
        render json:{"code":"200"}
    end
end

class PaymentLogConfig
    def initialize(name, suffix)
      @file_name = suffix.to_s
      @file_path = name
    end

    def [](_)
      config = {}
      config['type'] = 'file'
      config['level'] = 0
      config['tag'] = @file_name
      config['file_path'] = "./log/#{@file_path}"
      config
    end
  end

  private
  
        def init_log(file_path)
          config = PaymentLogConfig.new(file_path, Time.new.strftime('%Y-%m-%d'))
          Logger.configure(config)
        end
