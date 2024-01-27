FROM alpine:3.18 as ugit-ops

RUN apk add --no-cache \
    bash \
    coreutils \
    git \
    ncurses \
    curl

# Download fzf binary from GitHub, pin to 0.46.0, ugit requires minimum 0.21.0
RUN curl -L -o fzf.tar.gz https://github.com/junegunn/fzf/releases/download/0.46.0/fzf-0.46.0-linux_amd64.tar.gz && \
    tar -xzf fzf.tar.gz && \
    mv fzf /usr/bin/

# Copy only the ugit script into the container at /app
COPY ugit .

# Set permissions and move the script to path
RUN chmod +x ugit && mv ugit /usr/bin/

# Second stage: Copy only necessary binaries and their dependencies
FROM scratch

LABEL version="1.0"
LABEL description="Undo your last oopsie in git with ugit"
LABEL maintainer="Bhupesh Varshney <varshneybhupesh@gmail.com>"

COPY --from=ugit-ops /usr/bin/ugit /bin/
COPY --from=ugit-ops /usr/bin/git /usr/bin/
COPY --from=ugit-ops /usr/bin/fzf /usr/bin/
COPY --from=ugit-ops /usr/bin/tput /usr/bin/
COPY --from=ugit-ops /usr/bin/nl /usr/bin/
COPY --from=ugit-ops /usr/bin/awk /usr/bin/
COPY --from=ugit-ops /usr/bin/xargs /usr/bin/
COPY --from=ugit-ops /usr/bin/cut /usr/bin/
COPY --from=ugit-ops /usr/bin/tr /usr/bin/
COPY --from=ugit-ops /bin/bash /bin/

# copy lib files
COPY --from=ugit-ops /usr/lib/libncursesw.so.6 /usr/lib/
COPY --from=ugit-ops /usr/lib/libncursesw.so.6.4 /usr/lib/
COPY --from=ugit-ops /usr/lib/libpcre* /usr/lib/
COPY --from=ugit-ops /usr/lib/libreadline* /usr/lib/

COPY --from=ugit-ops /lib/libacl.so.1 /lib/
COPY --from=ugit-ops /lib/libattr.so.1 /lib/
COPY --from=ugit-ops /lib/libc.musl-* /lib/
COPY --from=ugit-ops /lib/ld-musl-* /lib/
COPY --from=ugit-ops /lib/libutmps.so.0.1 /lib/
COPY --from=ugit-ops /lib/libskarnet.so.2.13 /lib/
COPY --from=ugit-ops /lib/libz.so.1 /lib/

# copy terminfo database
COPY --from=ugit-ops /etc/terminfo/x/xterm-256color /usr/share/terminfo/x/

# Gib me all the colors
ENV TERM=xterm-256color
# Let fzf know our deault shell
ENV SHELL=/bin/bash
# Let ugit know we are running in docker
ENV UGIT_RUNNING_IN_DOCKER=true

WORKDIR /app
# TODO - replace with ENTRYPOINT when ugit is optimized for docker
# Run ugit when the container launches
CMD ["/bin/bash", "/bin/ugit"]