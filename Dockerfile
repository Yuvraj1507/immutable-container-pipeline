
# Multi-stage build using Alpine
FROM alpine:latest as builder
RUN apk add --no-cache gcc musl-dev

# Build a sample app (placeholder for actual app logic)
RUN echo "Sample Build Stage"

# Minimalist image using Distroless
FROM gcr.io/distroless/base:nonroot
COPY --from=builder /path/to/app /app

CMD ["./app"]
