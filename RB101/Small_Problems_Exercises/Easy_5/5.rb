def cleanup(str)
  p str.gsub(/[^a-z0-9\s]/i, '')
end

cleanup("---what's my +*& line?")