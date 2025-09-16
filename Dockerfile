FROM alpine:3
ARG SOURCE_DATE_EPOCH=0
LABEL org.opencontainers.image.created=$SOURCE_DATE_EPOCH

# Test outbound connectivity during build
RUN ping -c 3 8.8.8.8
