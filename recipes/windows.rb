#
# Cookbook Name:: libreoffice
# Recipe:: windows
# Author:: Rilindo Foster <rilindo.foster@monzell.com>
#
# Copyright 2013, YouScribe.
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

windows_package node['libreoffice']['windows']['package_name'] do
  source node['libreoffice']['windows']['url']
  checksum checksum if checksum
  installer_type :msi
  action :install
end