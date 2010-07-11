#!/usr/bin/env ruby

$:.unshift(File.dirname(__FILE__) + "/../lib")
$:.push(File.join(ENV['TM_SUPPORT_PATH'], 'lib')) if ENV['TM_SUPPORT_PATH']

require "ui"

default_string = ENV['TM_CURRENT_WORD'].strip
default_string = `pbpaste`.strip if default_string.size == 0

if gem_name = TextMate::UI.request_string(:title => 'Enter gem name:', :default => default_string)
  require "rubygems"
  gem_specs = Gem.source_index.select do |gem| 
    gem.first =~ /^#{gem_name}-\d/
  end
  if gem_spec = gem_specs.sort.last
    print "gem '#{gem_name}', '${1:#{gem_spec.last.version}}'"
  else
    print "gem '#{gem_name}'"
  end
else
  print "gem"
end