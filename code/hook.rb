#!/usr/bin/env ruby
# coding: utf-8

lines = File.open(ARGV[0],'r').readlines
abort "La primera línea tiene más de 50 caracteres" if lines.shift.size > 50
abort "La segunda línea debe estar vacía" if lines.size > 0 and lines.shift.chop != ''
if lines.size > 0

  bad_lines = {}

  lines.each_with_index do |line,i|
    bad_lines[i+2] = line if line.size > 80
  end

  if bad_lines.keys.size > 0
    puts "Todas estas líneas tienen más de 80 caracteres", bad_lines.keys.join(", ")
    exit 255
  end
end



