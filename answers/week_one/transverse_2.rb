def traverse(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
    unless File.directory?(name)
      puts File.basename(name)
    end
  end
end

traverse(ARGV[0])
