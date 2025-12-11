#!/bin/bash

yq '
  .modules[]
  | select(.name == "timing_flutter")
  | .sources[]
  | select(.url == "*timing_flutter.git")
  | .tag
' flatpak-flutter.yaml
exit $?
