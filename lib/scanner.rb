require_relative "scanner/version"
require_relative "scanner/functions"

module Scanner
  unless ARGV[0].end_with?(".c")
    puts "Incompatible File";
    exit;
  end
  mode = "r";
  file = File.open("#{ARGV[0]}", mode);
  words= file.read;
  file.close;
  file = File.open("out.lex","w");
  words=words.split(" ");
  words.each do |word|
    if is_keyword?(word)
      file.puts "<keyword   | "+word+">";
    elsif is_identifier?(word) 
      file.puts "<identifier| "+word+">";
    elsif is_number?(word)
      file.puts "<number    | "+word+">";
    elsif is_operator?(word)
      file.puts "<operator  | "+word+">";
    else
      check_for_operators(word,file);
     end
  end
  file.close;
end
