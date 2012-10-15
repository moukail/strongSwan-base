#
# Cookbook Name:: strongswan
# Description:: Activates service for xl2tpd (L2TP).
# Recipe:: service-xl2tpd
# Author:: Jerry Jackson (<jerry.w.jackson@gmail.com>)
#
# Copyright 2012, Infochimps
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

# xl2tpd service definition
service "xl2tpd" do
  service_name node[:strongswan][:l2tp][:service_name]
  supports :status => true, :restart => true, :reload => true
  action [ :enable ]
end
