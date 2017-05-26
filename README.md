# kafka_rest_proxy_client

KafkaProxyRestClient - a Ruby gem for the Kafka REST Proxy API

An initial draft of the [Kafka REST Proxy API](https://github.com/confluentinc/kafka-rest).  

## Example JSON request   

```
POST /topics/test HTTP/1.1
Host: kafkaproxy.example.com
Content-Type: application/vnd.kafka.json.v2+json
Accept: application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json
{
  "records": [
    {
      "key": "somekey",
      "value": {"foo": "bar"}
    },
    {
      "value": [ "foo", "bar" ],
      "partition": 1
    },
    {
      "value": 53.5
    }
  ]
}
```

## Example JSON response

```
HTTP/1.1 200 OK
Content-Type: application/vnd.kafka.v2+json
{
  "key_schema_id": null,
  "value_schema_id": null,
  "offsets": [
    {
      "partition": 2,
      "offset": 100
    },
    {
      "partition": 1,
      "offset": 101
    },
    {
      "partition": 2,
      "offset": 102
    }
  ]
}
```

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.1.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build kafka_rest_proxy_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./kafka_rest_proxy_client-1.0.0.gem
```


### Install from Git

    gem 'kafka_rest_proxy_client', git: 'https://github.com/mzaccari/kafka-rest-proxy-ruby-client.git'


## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'kafka_rest_proxy_client'

KafkaProxyRestClient.configure do |config|
  config.host = "127.0.0.1:8082"
  config.scheme = "http"
  config.base_path = "/"
end

topic_name = "topic_name_example"

api_client = KafkaProxyRestClient::ProducerApi.new
record = KafkaProxyRestClient::Record.new(value: { hello: 'world' })
request = KafkaProxyRestClient::ProducerRequest.new(records: [record])

begin
  result = api_client.publish(topic_name, request)
  p result
rescue KafkaProxyRestClient::ApiError => e
  puts "Exception when calling ProducerApi->topics_topic_name_post: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*KafkaProxyRestClient::ProducerApi* | [**publish**](docs/ProducerApi.md#topics_topic_name_post) | **POST** /topics/{topic_name} |


## Documentation for Models

 - [KafkaProxyRestClient::ProducerRequest](docs/ProducerRequest.md)
 - [KafkaProxyRestClient::ProducerResponse](docs/ProducerResponse.md)
 - [KafkaProxyRestClient::Record](docs/Record.md)

## Documentation for Authorization

 All endpoints do not require authorization.
