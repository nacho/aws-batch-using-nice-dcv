#!/bin/bash
firewall-cmd --zone=public --permanent --add-port=8443/tcp
firewall-cmd --reload

_username=dcvuser
_password="ADDHERE!"
adduser "${_username}" -G wheel
echo "${_username}:${_password}" | chpasswd

/bin/dcv create-session --owner "${_username}" --user "${_username}" "${_username}session"
