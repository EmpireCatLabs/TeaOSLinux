# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx
COPY build_files /

# Base Image
FROM quay.io/fedora/fedora-bootc:41
## If needed, make /opt immutable
# RUN rm /opt && mkdir /opt

### Disable GPG check ONLY for terra-mesa repo (if present)
RUN if [ -f /etc/yum.repos.d/terra-mesa.repo ]; then \
        sed -i 's/gpgcheck=1/gpgcheck=0/' /etc/yum.repos.d/terra-mesa.repo; \
    fi

### MODIFICATIONS
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/build.sh

### LINTING
RUN bootc container lint
