#!/bin/sh

export BROKER=--broker=amqp://${DB_PORT_5672_TCP_ADDR}:${DB_PORT_5672_TCP_PORT}//
export BROKER_API=--broker_api=http://guest:guest@${DB_PORT_15672_TCP_ADDR}:${DB_PORT_15672_TCP_PORT}/api/

/usr/local/miniconda/bin/flower ${BROKER} ${BROKER_API}
