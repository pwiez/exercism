class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    words = @line.split
    words.delete_at(0)
    words.join(' ').strip
  end

  def log_level
    @line.split.first.downcase.gsub(/[\[\]:]/, '')
  end

  def reformat
    message_no_code = message
    code = log_level
    "#{message_no_code} (#{code})"
  end
end
