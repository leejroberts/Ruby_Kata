# replace all internal whitespaces with "%20"
# source: Cracking The Code Interview Ch1 1.3

def urlify(str)
  str.strip.split.join("%20")
end

def urlify_gsub(str)
  str.strip.gsub(" ", "%20")
end
