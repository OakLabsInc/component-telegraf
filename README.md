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
            "image": "index.docker.io/oaklabs/app-example:release-1.0.1",
            "environment": {
                "TZ": "America/Phoenix"
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

* `{{influxdbHost}}` URL must include the port: http://influxdb.example.com:8086

## Further Reading

See the
[Telegraf docs](https://github.com/influxdata/telegraf) for instructions on Telegraf.

https://logz.io/ for free account
