#ENVIRONMENT VARIABLES
require 'yaml'

SITE_TITLE = "Hinde Capital"

#IGNORE

ignore /\/_.*/
ignore /\/.rvmrc/
ignore /\/config.ru/
ignore /\/Gemfile/
ignore /\/Gemfile.lock/
ignore /\/Procfile/

#LAYOUT

layout 'layout.html.erb'

# layout 'index.html.haml' => 'layout.html.haml'


before 'index.html.haml' do
  ap settings_helper
  @something = true
end


# before 'index2.html.haml', /.*html\.erb/ do
#   @something = true
# end



# HELPERS

helpers do
  def settings_helper
	@settings = YAML.load_file('_config.yml')
	@settings = Hashr.new(@settings)
  end

  def say_hello
    'Hello the time now is: ' + Time.now.to_s
  end
end

# regular expression
# layout /.*html.haml/ => 'layout.html.haml'

# do it in the before block if you like
# 
# before 'index.html.haml' do
#   layout 'layout.html.haml'
# end