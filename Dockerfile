FROM hexletbasics/base-image:latest

WORKDIR /exercises-lisp

ENV PATH=/exercises-lisp/bin:$PATH

RUN apt-get update && apt-get install -y \
    sbcl \
    rlwrap \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://beta.quicklisp.org/quicklisp.lisp && \
    sbcl --load quicklisp.lisp --eval "(quicklisp-quickstart:install)" --eval "(ql:add-to-init-file)" --eval "(quit)" && \
    rm quicklisp.lisp

COPY . .
