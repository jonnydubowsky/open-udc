#!/bin/bash
# -*- mode: sh; tabstop: 4; shiftwidth: 4; softtabstop: 4; -*-

#set -x
. ${0%/*}/udini.env
. common.env
UDDinit
. uddb.env
. uddcreation.env
mkfifo "$TmpDir/creation.fifo" || exit 2
UDcreationD "$TmpDir/creation.fifo"
