# AWS profile
aws_profile() {
  local _aws_profile_color="166"
  if ! aws_key_gen status &>/dev/null; then
    _aws_profile_color="red"
  fi
  echo -n "${_black}aws${_colon}%{%F{${_aws_profile_color}}%B%}${AWS_PROFILE:-default}"
}
