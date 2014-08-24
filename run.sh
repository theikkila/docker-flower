#!/bin/sh

export BROKER=amqp://${MQ_PORT_5672_TCP_ADDR}:${MQ_PORT_5672_TCP_PORT}//
export BROKER_API=http://guest:guest@${MQ_PORT_15672_TCP_ADDR}:${MQ_PORT_15672_TCP_PORT}/api/

/usr/local/miniconda/bin/flower --broker=${BROKER} --broker_api=${BROKER_API}
