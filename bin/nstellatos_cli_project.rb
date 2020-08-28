require 'pry'
require 'rest-client'
require 'json'
require 'colorize'


require_relative "../lib/nstellatos_cli_project/version"
require_relative "../lib/nstellatos_cli_project/cli"
require_relative "../lib/nstellatos_cli_project/api"
require_relative "../lib/nstellatos_cli_project/states"






module NstellatosCliProject
  class Error < StandardError; end
  # Your code goes here...
end



Cli.run









