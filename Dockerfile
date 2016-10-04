FROM suse/sles12:latest

MAINTAINER Darksheer

RUN zypper --gpg-auto-import-keys ref -s
RUN zypper -n in vim \
		 wget \
		 tar \
		 make \
		 gcc \
		 git-core \
		 apache2 \
		 apache2-mod_security2 \
		 mariadb \
		 mariadb-client \
		 python \
		 python3 \
		 perl \
		 ruby
RUN zypper -n up
