FROM openlink/virtuoso-opensource-7

# Set environment variables
ENV DBA_PASSWORD=dba
ENV VIRT_HTTP_PORT=8890
ENV VIRT_ISQL_PORT=1111

# Copy RDF data files and config
COPY data/*.nt /opt/virtuoso/database/
COPY virtuoso.ini /opt/virtuoso/database/virtuoso.ini

# Expose SPARQL and HTTP endpoints
EXPOSE 8890 1111

# Start Virtuoso
CMD ["/virtuoso-entrypoint.sh"]