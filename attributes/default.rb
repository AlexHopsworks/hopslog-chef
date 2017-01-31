include_attribute "elastic"
include_attribute "elasticsearch"
include_attribute "kagent"

default.hopslog.user                      = node.elastic.user
default.hopslog.group                     = node.elastic.group

default.hopslog.dir                       = "/srv"


#
# Logstash
#


default.logstash.version                  = "2.3.4"
default.logstash.url                      = "#{node.download_url}/logstash-#{node.logstash.version}.tar.gz"
default.logstash.http.port                = ""

default.logstash.systemd                  = "true"
default.logstash.home                     = node.hopslog.dir + "/logstash-" + "#{node.logstash.version}"
default.logstash.base_dir                 = node.hopslog.dir + "/logstash"
default.logstash.pid_file                 = "/tmp/logstash.pid"


#
# Kibana
#

default.kibana.version                    = "4.6.4"
default.kibana.url                        = "#{node.download_url}/kibana-#{node.kibana.version}-linux-x86_64.tar.gz"
default.kibana.port                       = "5601"

default.kibana.systemd                    = "true"
default.kibana.home                       = node.hopslog.dir + "/kibana-" + "#{node.kibana.version}-linux-x86_64"
default.kibana.base_dir                   = node.hopslog.dir + "/kibana"
default.kibana.log_dir                    = node.hopslog.base_dir + "/log"
default.kibana.pid_file                   = "/tmp/kibana.pid"
default.kibana.default_index		  = "hopsdefault"
