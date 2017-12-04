require File.expand_path('../../../lib/payment/logger', __FILE__)

class InitLogConfig
  def initialize(logger_config)
    @config = logger_config
  end

  def [](_)
    config = {}
    config['type'] = @config['type']
    config['level'] = @config['level']
    config['format'] = @config['format']
    config
  end
end

logger_config = Rails.application.config_for(:logger)
Logger.configure(InitLogConfig.new(logger_config))
