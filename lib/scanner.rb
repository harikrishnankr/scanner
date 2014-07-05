require_relative "scanner/version"

module Scanner
  keyword=["int","float","char","double","long","short","signed","unsigned"];
  user=gets.chomp;
  user=user.gsub(',',' ');
  user=user.split(" ");
  user.each do |i|
     if keyword.include?(i)
          puts i;
     elsif i.match(/^[_a-zA-Z][a-zA-Z_0-9]*$/)
          puts "identifier";
     elsif i.match(/^[0-9][0-9]*$/)
          puts "number";
     else
       puts "error";
     end
  end
end
