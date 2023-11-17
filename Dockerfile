ARG GO_VERSION
FROM golang:${GO_VERSION}

LABEL maintainer="itbraem@gmail.com"
ENV GO111MODULE on
ENV GOPROXY https://goproxy.cn,direct
ENV GOPRIVATE "gitlab.shenjumiaosuan.com"
ENV TZ Asia/Shanghai

# 安装依赖 Git
RUN apt-get --no-install-recommends update
RUN apt-get install git -y
RUN rm -rf /var/lib/apt/lists/*
