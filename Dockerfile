FROM hexletbasics/base-image:latest

# TODO: replace exercises-template with "exercises-<language>"
WORKDIR /exercises-template

# https://github.com/pgrange/bash_unit
RUN cd /usr/local/bin && curl -s https://raw.githubusercontent.com/pgrange/bash_unit/master/install.sh | bash

COPY . .

# TODO: replace
ENV PATH=/exercises-template/bin:$PATH
