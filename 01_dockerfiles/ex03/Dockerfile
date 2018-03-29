FROM    golang

# We'll setup our environment by obtaining updating, upgrading and setting our
# user.

LABEL	maintainer="leo@42.us.org"

RUN		apt-get update -y && \
		apt-get upgrade -y && \
		adduser --disabled-login --gecos 'Gogs' git

# We'll run it with mysql-server

RUN     DEBIAN_FRONTEND=noninteractive && \
		apt-get install mysql-server -y

# Let's start mysql

RUN     service mysql start && \
		mysql -uroot -e "create database gogs"

USER    git

# Let's expose port 3000 to be able to bind at docker run

EXPOSE  3000/tcp

# We'll create a directory in the $GOPATH for gogits
# We'll clone the develop branch there by default called gogs
# After going inside that directory we'll build the project there.

RUN     mkdir -p $GOPATH/src/github.com/gogits && \
        cd $GOPATH/src/github.com/gogits && \
        git clone --depth=1 -b develop https://github.com/gogits/gogs && \
        cd gogs && \
        go build .

# We'll set the user to root so it can boot mysql with root

USER    root

# running command will be to start mysql and substitute user to git and 
# run from GOPATH

CMD     ["service", "mysql", "start"]
CMD		["su", "git", "-c", "$GOPATH/src/github.com/gogits/gogs/gogs web"]
