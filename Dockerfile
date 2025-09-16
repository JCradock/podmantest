FROM alpine:3
ARG SOURCE_DATE_EPOCH=0
LABEL org.opencontainers.image.created=$SOURCE_DATE_EPOCH

# Test outbound connectivity during build
RUN wget -q --spider https://www.google.com && echo "HTTP connectivity test passed" || echo "HTTP connectivity test failed"
