# Dockerfile for alist based scratch
# Copyright (C) @ 2022 KIMI360 <https://github.com/kimi360>
# Reference URL:
# https://github.com/ghosthgytop/Xhofe_alist

FROM xhofe/alist as build

FROM scratch
LABEL maintainer="KIMI360 <https://github.com/kimi360>"
WORKDIR /opt/alist/
VOLUME /opt/alist/data/
COPY --from=build /opt/alist/alist ./
EXPOSE 5244
CMD [ "./alist", "-docker" ]
