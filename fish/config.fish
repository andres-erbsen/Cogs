if status --is-login
	set GOPATH ~/programming/go
	set PATH /usr/local/bin /usr/bin /bin /sbin  $GOPATH/bin /usr/lib/go/pkg/tool/linux_amd64/ /home/andres/.gem/ruby/2.1.0/bin/
end
set TORMIT 18.187.1.68
set TORMIT2 18.238.1.85

cat ~/.gpg-agent-info | sed 's/=/ /' | while read key value
	set -e $key
	set -U -x $key "$value"
end

. ~/.aliases
