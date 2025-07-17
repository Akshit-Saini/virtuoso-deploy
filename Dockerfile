FROM openlink/virtuoso-opensource-7

ENV DBA_PASSWORD=dba
ENV VIRT_HTTP_PORT=8890
ENV VIRT_ISQL_PORT=1111

# Copy RDF data files
COPY data/*.nt /opt/virtuoso/database/

# Copy the customized ini file with CORS headers (required for Vercel)
COPY virtuoso.ini /opt/virtuoso/database/virtuoso.ini

# Expose HTTP and ISQL ports
EXPOSE 8890 1111

# Start Virtuoso server
CMD ["/virtuoso-entrypoint.sh"]