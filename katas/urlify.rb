

def urlify(str)
  str.strip.split.join("%20")
end

def urlify_gsub(str)
  str.strip.gsub(" ", "%20")
end
