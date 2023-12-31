#!/usr/bin/env bash

AWS_PROFILE_ENABLED="${AWS_PROFILE_ENABLED:-false}"
AWS_PROFILE_PREFIX="${AWS_PROFILE_PREFIX-[}"
AWS_PROFILE_SUFFIX="${AWS_PROFILE_SUFFIX-]}"
AWS_PROFILE_SEPARATOR="${AWS_PROFILE_SEPARATOR-|}"
AWS_PROFILE_SYMBOL="${AWS_PROFILE_SYMBOL-☁}"

aws_ps1() {
  if [[ "${AWS_PROFILE_ENABLED}" == true ]] && [[ -n "${AWS_PROFILE}" ]]; then
    echo "${AWS_PROFILE_PREFIX}${AWS_PROFILE_SYMBOL}${AWS_PROFILE_SEPARATOR}${AWS_PROFILE}${AWS_PROFILE_SUFFIX}"
  fi
}

awson() {
  export AWS_PROFILE_ENABLED=true
}

awsoff() {
  export AWS_PROFILE_ENABLED=false
}
