require 'rubocop/rake_task'

if Rails.env.development? || Rails.env.test?
  # 格式化代码
  RuboCop::RakeTask.new(:format) do |task|
    task.patterns = ['app/**/*.rb', 'lib/**/*.rb']
    task.formatters = ['files']
    task.fail_on_error = false
    task.options = ['-a', '-c', '.rubocop.yml']
  end

  # 检查代码
  RuboCop::RakeTask.new(:check) do |task|
    task.patterns = ['app/**/*.rb', 'lib/**/*.rb']
    task.fail_on_error = false
    task.options = ['-c', '.rubocop.yml']
  end
end
