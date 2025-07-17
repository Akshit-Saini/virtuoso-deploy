FROM openlink/virtuoso-opensource-7

ENV DBA_PASSWORD=dba
ENV VIRT_HTTP_PORT=8890
ENV VIRT_ISQL_PORT=1111

EXPOSE 8890 1111
CMD ["/virtuoso-entrypoint.sh"]
