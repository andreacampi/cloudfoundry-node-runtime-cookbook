#
# Cookbook Name:: cloudfoundry-node-runtime
# Recipe:: node08
#
# Copyright 2013, ZephirWorks
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
#

include_recipe "nodejs::install_from_package"

cloudfoundry_runtime "node08" do
  version           "0.8.18"
  description       "Node.js 0.8.18"
  executable        "/usr/bin/node"
  version_flag      "-v"
  version_output    "0.8.18"
  frameworks        %w{ node standalone }
  action :nothing
end.run_action(:create)
