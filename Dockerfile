FROM umputun/remark42:latest

# Copy custom CSS overrides
COPY custom.css /tmp/custom.css

# Append custom CSS to the end of remark.css
# This ensures our overrides take effect via CSS cascade (later rules win)
RUN cat /tmp/custom.css >> /srv/web/remark.css && rm /tmp/custom.css
