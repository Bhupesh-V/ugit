# First stage: Install packages
FROM alpine:3.18 as builder

RUN apk add --no-cache \
    bash \
    coreutils \
    git \
    ncurses \
    fzf && \
    apk --purge del apk-tools

# Copy only the ugit script, LICENSE, and README.md into the container at /app
WORKDIR /app
COPY ugit .
COPY LICENSE .
COPY README.md .

# Set permissions and move the script to path
RUN chmod +x ugit && mv ugit /usr/local/bin/

# Second stage: Copy only necessary binaries and their dependencies
FROM busybox

COPY --from=builder /usr/local/bin/ugit /usr/local/bin/
COPY --from=builder /usr/bin/git /usr/bin/
COPY --from=builder /usr/bin/fzf /usr/bin/
COPY --from=builder /usr/bin/tput /usr/bin/
COPY --from=builder /usr/bin/nl /usr/bin/
COPY --from=builder /bin/bash /bin/

COPY --from=builder /usr/lib/bash /usr/lib/bash
COPY --from=builder /usr/lib/libncursesw.so.6 /usr/lib/
COPY --from=builder /usr/lib/libncursesw.so.6.4 /usr/lib/
COPY --from=builder /usr/lib/libpcre* /usr/lib/
COPY --from=builder /usr/lib/libreadline* /usr/lib/
COPY --from=builder /usr/lib/libunistring* /usr/lib/

COPY --from=builder /lib/ /lib/

COPY --from=builder /etc/terminfo/ /usr/share/terminfo/

WORKDIR /app
# Run ugit when the container launches
CMD ["ugit"]