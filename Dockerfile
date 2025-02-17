FROM debian
RUN apt update -y && apt install -y curl && apt clean -y && apt autoremove -y
RUN curl install.duckdb.org | sh
RUN /root/.duckdb/cli/latest/duckdb -s "INSTALL mysql"
ENTRYPOINT ["/root/.duckdb/cli/latest/duckdb"]
