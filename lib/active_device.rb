#--
# Copyright (c) 2009 Shenouda Bertel <sbertel@mobithought.com>, MobiThought.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

module ActiveDevice

end

require 'active_device/helper'
require 'active_device/controller_methods'
require 'active_device/user_agent'
require 'active_device/brand'
require 'active_device/model'
require 'active_device/handset'
require 'active_device/bot'
require 'active_device/engine'
require 'active_device/browser'
require 'active_device/os'

if Rails::VERSION::MAJOR >= 5
  ActiveSupport.on_load :action_controller do
    include ActiveDevice::ControllerMethods
  end
  ActiveSupport.on_load :action_view do
    include ActiveDevice::Helper
  end
else
  ActionController::Base.send :include, ActiveDevice::ControllerMethods
  ActionView::Base.send :include, ActiveDevice::Helper
end
