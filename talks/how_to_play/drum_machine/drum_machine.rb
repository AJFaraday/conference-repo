require 'yaml'

class DrumMachine

  attr_accessor(
    :config,
    :sequences,
    :col_width,
    :max_col,
    :step_time
  )

  def initialize(config_file)
    config_file_path = File.join(
      File.dirname(__FILE__),
      config_file
    )
    @config = YAML.load_file(config_file_path)
    @sequences = @config['sequences']
    @col_width = @config['column_width']
    @max_col = @sequences.map{|x|x['column']}.max + 1
    @step_time = get_step_time
  end

  def get_step_time
    60.0 / @config['bpm'].to_f / 4.0
  end

  def play
    step = 0
    loop do
      play_step(step)
      step += 1
      step %= @config['pattern_length']
      sleep @step_time
    end
  end

  def play_step(step)
    result = ''
    @max_col.times do |column|
      sounds = sounds_at(column, step)
      result << sounds.ljust(@col_width)[0...@col_width]
    end
    puts result unless result.strip.empty?
  end

  def sounds_at(column, step)
    sounds = @sequences.select { |s| s['steps'].include?(step) && s['column'] == column }
    sounds.collect{|x|x['sound']}.sort.join
  end

end
