# Google Cloud Platform Telegraf Logger

This component uses
[telegraf](https://docs.fluentd.org/v1.0/articles/quickstart) to send
logs to GCP Stackdriver. It can be adapted to send logs to other
services and to receive logs from application by a variety of methods.

Requirements for use:

* Telegraf configuration mounted at `/etc/telegraf/telegraf.conf`
* GCP service account credentails mounted at `/application_default_credentials.json`

[`google-telegraf.conf`](./conf/google-telegraf.conf) shows the recommended Telegraf configuration.

