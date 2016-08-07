def traverse(path)
  if File.directory?(path)
    dir = Dir.open(path)
    while name = dir.read
      next if name == "."
      next if name == ".."
      traverse(path + "/" + name)
    end
    dir.close
  else
    print_basename_for_md(path)
    # process_file(path)
  end
end

def print_basename_for_md(path)
  if File.extname(path) == ".md"
    puts File.basename(path)
  end
end

def process_file(path)
  puts path
end

traverse(ARGV[0])
