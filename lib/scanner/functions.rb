def is_keyword?(word)
	keyword=["int","float","char","double","long","short","signed","unsigned","void","main","printf"];
	unless keyword.include?(word)
		return false;
	end
	true;
end

def is_identifier?(word)
    !(word =~ /^[a-zA-Z][a-zA-Z0-9_]*$/).nil?
end

def is_number?(word)
	!(word=~ /^[0-9][0-9]*$/).nil?
end

def is_operator?(word)
	!(word =~ /^[()+-;.=,\*\/\[\]{}""%]$/).nil?
end


def check_for_operators(word)
	words=word.split(/([%""\]\[\/;.,={}()*+-])/);
	words.delete("");	
	words.each do |token|
     if is_keyword?(token)
          puts "<keyword   | "+token+">";
     elsif is_identifier?(token)
          puts "<identifier| "+token+">";
     elsif is_number?(token)
          puts "<number    | "+token+">";
     elsif is_operator?(token)
     	  puts "<operator  | "+token+">";
     else
       puts "error";
     end
    end
end