class Api::V1::LogsController < ApplicationController

    # 测试logs
    class LogConfig
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


    def index

    end

    private
    
    def init_log(file_name)
        config = LogConfig.new(file_name, Time.new.strftime('%Y-%m-%d'))
        Logger.configure(config)
    end

end
