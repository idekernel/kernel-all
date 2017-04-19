FROM idekernel/kernel-php
USER root
COPY add-apt-repository /usr/bin/add-apt-repository
RUN chmod +x /usr/bin/add-apt-repository \
    && chown root:root /usr/bin/add-apt-repository
RUN add-apt-repository ppa:chronitis/jupyter \
    && apt-get update && apt-get install -y \
		ihaskell \
		ijulia \
		ijavascript \
		irkernel \
		iruby \
		gophernotes
USER $NB_USER
