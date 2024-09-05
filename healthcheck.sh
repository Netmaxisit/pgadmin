#!/bin/bash
if wget --spider http://localhost:80 2>/dev/null; then
  exit 0
else
  exit 1
fi
