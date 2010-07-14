#!/usr/bin/env ruby

$:.unshift(File.dirname(__FILE__) + "/../lib")
$:.push(File.join(ENV['TM_SUPPORT_PATH'], 'lib')) if ENV['TM_SUPPORT_PATH']

require "ui"

default_string = ENV['TM_CURRENT_WORD']
default_string = `pbpaste`.strip if default_string.nil? || default_string.size == 0

if gem_name = TextMate::UI.request_string(:title => 'Enter gem name:', :default => default_string)
  require "rubygems"
  gem_specs = Gem.source_index.select do |gem| 
    gem.first =~ /^#{gem_name}-\d/
  end
  if gem_spec = gem_specs.sort.last
    gem_spec = gem_spec.last # ['name-1.0.0', spec obj]
    unless gem_spec.files.select { |f| f =~ /^lib\/#{gem_name}\.rb$/}.size == 1
      load_files = gem_spec.files.select { |f| f =~ /^lib\/([\w_\-]+)\.rb$/}
      if load_files && load_files.first =~ /lib\/(.*)\.rb/
        requirement = ", :require => '#{$1}'" if $1 != gem_name
      end
    end
    print "gem '#{gem_name}', '${1:#{gem_spec.version}}'#{requirement}"
  else
    print "gem '#{gem_name}'"
  end
else
  print "gem"
end