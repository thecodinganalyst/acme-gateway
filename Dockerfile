FROM kong:3.6.0

COPY kong.template.yml /usr/local/kong/declarative/kong.template.yml
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/usr/local/kong/declarative/kong.yml
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001

EXPOSE 8000 8001

ENTRYPOINT ["/entrypoint.sh"]

