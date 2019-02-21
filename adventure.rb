# frozen_string_literal: true

# Init Adventure program file
require 'bundler'

# Require dependencies
Bundler.require(:default)

# Patch lookup path
$LOAD_PATH.unshift File.dirname(__FILE__)

# Require files
require 'system/errors'
require 'system/parser'
require 'system/printer'
require 'system/repl'
require 'text/manager'
require 'game/engine'

# Initialize REPL sequence
System::Repl.start
