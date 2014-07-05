require_relative "scanner/version"
require_relative "scanner/functions"

module Scanner
  words=gets.chomp;
  #words=words.gsub(',',' ');
  words=words.split(" ");
  words.each do |word|
    if is_keyword?(word)
      puts "<keyword   | "+word+">";
    elsif is_identifier?(word) 
      puts "<identifier| "+word+">";
    elsif is_number?(word)
      puts "<number    | "+word+">";
    elsif is_operator?(word)
      puts "<operator  | "+word+">";
    else
      check_for_operators(word);
     end
  end
end
