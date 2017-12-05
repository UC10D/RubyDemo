# 具体指向文件
require File.expand_path('../../../lib/logger', __FILE__)

class InitLogConfig
  def initialize(logger_config)
    p "------------------initialize"
    @config = logger_config
  end

  def [](_)
    p "------------------[]"
    config = {}
    config['type'] = @config['type']
    config['level'] = @config['level']
    config['format'] = @config['format']
    config
  end
end

logger_config = Rails.application.config_for(:logger)
# 读取 logger.yml 文件
p logger_config
Logger.configure(InitLogConfig.new(logger_config))
