=begin
#Kafka REST Proxy API

#An initial draft of the [Kafka REST Proxy API](https://github.com/confluentinc/kafka-rest).  ## Example JSON request   ``` POST /topics/test HTTP/1.1 Host: kafkaproxy.example.com Content-Type: application/vnd.kafka.json.v2+json Accept: application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json {   \"records\": [     {       \"key\": \"somekey\",       \"value\": {\"foo\": \"bar\"}     },     {       \"value\": [ \"foo\", \"bar\" ],       \"partition\": 1     },     {       \"value\": 53.5     }   ] } ```  ## Example JSON response  ``` HTTP/1.1 200 OK Content-Type: application/vnd.kafka.v2+json {   \"key_schema_id\": null,   \"value_schema_id\": null,   \"offsets\": [     {       \"partition\": 2,       \"offset\": 100     },     {       \"partition\": 1,       \"offset\": 101     },     {       \"partition\": 2,       \"offset\": 102     }   ] } ``` 

OpenAPI spec version: 0.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for KafkaProxyRestClient::Body
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Body' do
  before do
    # run before each test
    @instance = KafkaProxyRestClient::Body.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body' do
    it 'should create an instact of Body' do
      expect(@instance).to be_instance_of(KafkaProxyRestClient::Body)
    end
  end
  describe 'test attribute "records"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key_schema"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key_schema_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value_schema"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value_schema_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

