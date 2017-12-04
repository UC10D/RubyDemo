###########################################################
# Copyright(c):: 2017福州博翼互娱网络科技有限公司
# Author:: sundbcn@gmail.com
# Created:: 17/2/13
# logger
###########################################################

require 'log4r'
require 'log4r/formatter/formatter'
require 'log4r/outputter/fileoutputter'
require 'log4r/outputter/syslogoutputter'
require_relative 'colorformatter'

class Logger
  # @logger = nil

  def self.configure(config)
    logger_conf = config['logger']
    @logger_type = logger_conf['type'] || 'console'
    @logger_level = logger_conf['level'] || 0
    @logger_pattern = logger_conf['pattern'] || '[%L][%d]:%m'
    @logger_file_path = logger_conf['file_path'] || './log'
    @logger_tag = logger_conf['tag'] || ''

    init_logger

    define_log_method(:debug)
    define_log_method(:info)
    define_log_method(:warn)
    define_log_method(:error)
    define_log_method(:fatal)
  end

  private_class_method

  def self.define_log_method(log_level)
    define_singleton_method(log_level) do |log|
      @logger.send(log_level, log)
    end
  end

  def self.init_logger
    @logger = Log4r::Logger.new('logger')
    @logger.level = @logger_level
    @logger.add outputter
  end

  def self.outputter
    case @logger_type
    when 'console'
      Log4r::StdoutOutputter.new(
        @logger_tag,
        formatter: Log4r::ColorFormatter.new(pattern: @logger_pattern)
      )
    when 'file'
      Log4r::FileOutputter.new(
        @logger_tag,
        filename: "#{@logger_file_path}/#{@logger_tag}.log",
        formatter: Log4r::PatternFormatter.new(pattern: @logger_pattern)
      )
    when 'syslog'
      Log4r::SyslogOutputter.new(
        @logger_tag,
        formatter: Log4r::PatternFormatter.new(pattern: @logger_pattern),
        facility: Syslog::Facility::LOG_LOCAL3
      )
    end
  end
end
