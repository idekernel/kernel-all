FROM idekernel/kernel-php
USER root
RUN add-apt-repository ppa:chronitis/jupyter \
    && apt-get update && apt-get install -y \
		ihaskell \
		ijulia \
		ijavascript \
		irkernel \
		iruby \
		gophernotes
USER $NB_USER
