class profile::ssh_server {
	package { 'openssh-server':
			 ensure => present,
	}
	service { 'sshd':
			 ensure => 'running',
			 enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
			 ensure => present,
			 user   => 'root',
			 type   => 'ssh-rsa',
			 key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVboRg6PSIvncAIHlMyKhBSr+06TUi/xIxLCWPnTwYypvEdFNpb3ORhW1u4Vo98NwJS7Zsh853mJsf8BWv4NNV5Q9OXhteVj/wicEJ7R5G8CeVoGqyu+caHX5FlirnSoeqPuSQFAXR66j0VKI5SK39TGLKUxHPOlUe0N+kDHu9H/ebvtMCVupctSWpNS54Slk7oTcR4eak26iO+RS3gr3wcQlC5vfEJWibm1h/d9uXvL/+6z+pdhSCizu4+q7krJ5s00KaXYnAb/axeizrzAGK/Jy+fVw1YfQiJb4nOisj/iOoFgkgjE2ztb8Y4J8rhk8vFKRm+l+bIeHJna/Faqt1',
	}
}
