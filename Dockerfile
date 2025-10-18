FROM n8nio/n8n:latest

ENV GENERIC_TIMEZONE=Asia/Riyadh
ENV TZ=Asia/Riyadh

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

ENTRYPOINT ["n8n"]
CMD ["start"]
