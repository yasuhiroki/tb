#!/bin/bash

test_failed() {
  echo "test failed: $@"
  exit 1
}

seq 10 | paste - - | ./tb         | grep -sq '| 1	2 |' || test_failed "should print '| 1	2 |'"
seq 10 | paste - - | ./tb -d '	' | grep -sq '| 1 | 2 |' || test_failed "should print '| 1 | 2 |'"
seq 10 | paste - - | ./tb -d '	' | grep -sq '| --- | --- |' || test_failed "should print '| --- | --- |'"
