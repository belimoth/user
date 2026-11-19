#!/bin/bash

[[ -f /a/void/msvc/vcvars.env ]] || build-vcvars
source load-vcvars
