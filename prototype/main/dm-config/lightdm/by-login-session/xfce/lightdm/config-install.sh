#!/usr/bin/env bash

set -e


################################################################################
### Head: lightdm
##

lightdm_config_install () {

	echo
	echo "##"
	echo "## Config: lightdm"
	echo "##"
	echo


	lightdm_config_install_by_dir

	#lightdm_config_install_by_each_file

	lightdm_config_install_for_default_login_background


	echo

}

lightdm_config_install_by_dir () {


	echo
	echo "sudo mkdir -p /etc/lightdm"
	sudo mkdir -p /etc/lightdm


	echo
	echo "sudo cp -rfT ./asset/overlay/etc/lightdm /etc/lightdm"
	sudo cp -rfT "./asset/overlay/etc/lightdm" "/etc/lightdm"




	return 0;




	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"




	return 0;

}

lightdm_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/lightdm"
	mkdir -p "${HOME}/.config/lightdm"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/lightdm/lightdm.conf ${HOME}/.config/lightdm/lightdm.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/lightdm/lightdm.conf" "${HOME}/.config/lightdm/lightdm.conf"


}


lightdm_config_install_for_default_login_background () {


	echo
	echo "sudo mkdir -p /usr/share/backgrounds"
	sudo mkdir -p /usr/share/backgrounds


	echo
	echo "cd /usr/share/backgrounds"
	cd /usr/share/backgrounds




	echo
	echo "sudo ln -sf Fluent-building-night.png default-login.jpg"
	sudo ln -sf Fluent-building-night.png default-login.jpg




	echo
	echo "cd ${OLDPWD}"
	cd "${OLDPWD}"



	return 0

}

##
### Tail: lightdm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lightdm_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
