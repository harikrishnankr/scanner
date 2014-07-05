require_relative "scanner/version"

module Scanner
  keyword=["int","float","char","double","long","short","signed","unsigned"];
  words=gets.chomp;
  words=words.gsub(',',' ');
  words=words.split(" ");
  words.each do |word|
     if keyword.include?(word)
          puts word;
     elsif word.match(/^[_a-zA-Z][a-zA-Z_0-9]*$/)
          puts "identifier";
     elsif word.match(/^[0-9][0-9]*$/)
          puts "number";
     else
       puts "error";
     end
  end
end
