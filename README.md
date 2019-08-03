# component-telegraf

Google Cloud Platform Telegraf Logger

## Description

This component uses
[telegraf](https://docs.influxdata.com/telegraf/v1.11) to send
logs to GCP InfluxDB. It can be adapted to send logs to other
services and to receive logs from application by a variety of methods.

## Requirements

* Telegraf configuration mounted at [`/config/google-telegraf.conf`](./config/google-telegraf.conf)
* GCP service account credentails mounted at [`/secrets/default-credentials.json`](./secrets/default-credentials.json)

## Installation

``` json
{
    "services": [{
            "image": "index.docker.io/oaklabs/app-website:release-1.0.6",
            "environment": {
                "REMOTE_URL": "https://www.zivelo.com"
            }
        },
        {
            "image": "index.docker.io/oaklabs/component-fluentd:logzio",
            "environment": {
                "LOGZ_TYPE": "{{logzType}}",
                "LOGZ_TOKEN": "{{logzToken}}"
            }
        },
        {
            "image": "index.docker.io/oaklabs/component-telegraf:demo",
            "environment": {
                "INFLUXDB_HOST": "{{influxdbHost}}"
            }
        }
    ]
}

```

* `{{influxdbHost}}` takes a URL and port: http://influxdb.example.com:8086
* `{{logzType}}` is a tag that allows the results to be filtered at logx.io interface
* `{{logzToken}}` can be obtained from your logx.io account.

## Further Reading

See the
[Telegraf docs](https://github.com/influxdata/telegraf) for instructions on Telegraf.

https://logz.io/ for free account
