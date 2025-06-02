dockerfile
FROM netboxcommunity/netbox:latest

# Install the floorplan plugin
RUN pip install netbox-floorplan-plugin

# Copy custom configuration
COPY config/configuration.py /etc/netbox/config/configuration.py

# Copy any custom scripts
COPY scripts/ /opt/netbox/scripts/

# Set working directory
WORKDIR /opt/netbox/netbox

# Expose port
EXPOSE 8000

# Use the default entrypoint from the base image
