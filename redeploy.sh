#!/bin/bash
make test
make install
./install_seesaw.sh
restart seesaw_watchdog
