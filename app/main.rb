require './app/model/library'
require './app/command/executor'

executor = Executor.new

@result = {
  'message' => '',
  'status' => false
}

loop do
  puts "Input your command down here: "
  commands = gets.chomp.split("|")
  command = commands[0]
  break if command.eql? 'exit'
  if !command.nil?
    param = commands[1..commands.size-1].join('|')
    puts "You should build a library (ex. build_library|total_shelves|total_rows|total_columns)" unless command.eql? 'build_library'
    @result = executor.execute(command, param)
    puts @result['message'] if command.eql? 'build_library'
    break if @result['status'].eql? true
  else
    puts 'Program cannot recognize the command'
  end
end

if @result['status'].eql? true
  loop do
    puts "Input your command down here: "
    commands = gets.chomp.split("|")
    command = commands[0]
    break if command.eql? 'exit'
    if !command.nil?
      param = commands[1..commands.size-1].join('|')
      puts "You cannot build a library twice" if command.eql? 'build_library'

      if !command.eql? 'build_library'
        puts executor.execute(command, param)['message']
      end
    else
      puts 'Program cannot recognize the command'
    end

  end
end
