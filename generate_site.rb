# encoding: utf-8
require 'yaml'

site = File.read('site_template.html')
translations = YAML.load_file('translations.yaml')

translations.each do |language, strings|
	File.write "#{language}/index.html", site % strings
end



#bg_html = site % translations[:bg]
#en_html = site % translations[:en]
#de_html = site % translations[:de]

#File.write "./en/index.html", en_html
#File.write "./bg/index.html", bg_html
#File.write "./de/index.html", de_html

puts "Job done"