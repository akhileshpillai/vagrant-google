# Copyright 2013 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
require "vagrant"

module VagrantPlugins
  module GCE
    module Errors
      class VagrantGCEError < Vagrant::Errors::VagrantError
        error_namespace("vagrant_gce.errors")
      end

      class FogError < VagrantGCEError
        error_key(:fog_error)
      end

      class InstanceReadyTimeout < VagrantGCEError
        error_key(:instance_ready_timeout)
      end

      class RsyncError < VagrantGCEError
        error_key(:rsync_error)
      end
    end
  end
end
