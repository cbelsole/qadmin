# qadmin

# libs
require "erubis"
require "forwardable"
require "iconv"
require "active_support" unless defined?(ActiveSupport)
require 'restful_query'
require 'will_paginate'
# modules
require "qadmin/controller"
require "qadmin/helper"
require "qadmin/overlay"
require "qadmin/page_titles"
require "qadmin/templates"
require "qadmin/util"

require "qadmin/railtie"

# classes
require "qadmin/configuration"

module Qadmin
  VERSION = "0.3.0"
end
