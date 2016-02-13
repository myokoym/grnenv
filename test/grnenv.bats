#!/usr/bin/env bats

@test "invalid command" {
  run grnenv piyopiyo
  test $status -eq 1
  test "grnenv: command not found: <piyopiyo>" = "$output"
}

@test "varsion" {
  run grnenv version
  test $status -eq 0
  test $(echo "$output" | grep -E "([0-9]\.)*[0-9]")
}
