require "DirectoryBuilder/version"

module DirectoryBuilder
  class Builder
    def initialize(root, &block)
      Dir.chdir(root) { instance_eval(&block) if block }
    end

    def touch(name, mode=nil, owner=nil, &block)
      File.open(name, "w") do |f|
        f.puts block.call if block
        f.chmod(mode) if mode
        f.chown(*owner) if owner
      end
    end

    def mkdir(name, mode=nil, &block)
      Dir.mkdir(*[name, mode].compact)
      Dir.chdir(name) { instance_eval &block }
    end
  end
end

def cd(name, &block)
  DirectoryBuilder::Builder.new(name, &block)
end
