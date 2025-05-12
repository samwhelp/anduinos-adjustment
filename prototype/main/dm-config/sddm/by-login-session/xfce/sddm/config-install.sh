#!/usr/bin/env bash

set -e


################################################################################
### Head: sddm
##

sddm_config_install () {

	echo
	echo "##"
	echo "## Config: sddm"
	echo "##"
	echo


	sddm_config_install_by_dir

	#sddm_config_install_by_each_file

	sddm_config_install_for_default_login_background


	echo

}

sddm_config_install_by_dir () {


	echo
	echo "sudo mkdir -p /etc/sddm.conf.d"
	sudo mkdir -p /etc/sddm.conf.d


	echo
	echo "sudo cp -rfT ./asset/overlay/etc/sddm.conf.d /etc/sddm.conf.d"
	sudo cp -rfT "./asset/overlay/etc/sddm.conf.d" "/etc/sddm.conf.d"




	echo
	echo "sudo mkdir -p /usr/share/sddm/themes"
	sudo mkdir -p /usr/share/sddm/themes


	echo
	echo "sudo cp -rfT ./asset/overlay/usr/share/sddm/themes /usr/share/sddm/themes"
	sudo cp -rfT "./asset/overlay/usr/share/sddm/themes" "/usr/share/sddm/themes"




	echo
	echo "sudo mkdir -p /var/lib/sddm"
	sudo mkdir -p /var/lib/sddm


	echo
	echo "sudo cp -rfT ./asset/overlay/var/lib/sddm /var/lib/sddm"
	sudo cp -rfT "./asset/overlay/var/lib/sddm" "/var/lib/sddm"




	return 0;




	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"




	return 0;

}

sddm_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/sddm"
	mkdir -p "${HOME}/.config/sddm"

	echo
	echo "install -Dm644 ./asset/overlay/etc/skel/.config/sddm/sddm.conf ${HOME}/.config/sddm/sddm.conf"
	install -Dm644 "./asset/overlay/etc/skel/.config/sddm/sddm.conf" "${HOME}/.config/sddm/sddm.conf"


}


sddm_config_install_for_default_login_background () {


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
### Tail: sddm
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	sddm_config_install

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
