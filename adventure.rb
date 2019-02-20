# frozen_string_literal: true

# Init Adventure program file
require 'bundler'

# Require dependencies
Bundler.require(:default)

# Patch lookup path
$LOAD_PATH.unshift File.dirname(__FILE__)

# Require files
require 'system/repl'

# Initialize REPL sequence
System::Repl.start
