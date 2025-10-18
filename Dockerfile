# استخدم صورة n8n الرسمية
FROM n8nio/n8n:latest

# تثبيت tini يدويًا
USER root
RUN apt-get update && apt-get install -y tini && apt-get clean

# إعداد المنطقة الزمنية
ENV GENERIC_TIMEZONE=Asia/Riyadh
ENV TZ=Asia/Riyadh

# إصلاح صلاحيات مجلد n8n
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

# المنفذ الافتراضي
EXPOSE 5678

# تشغيل n8n باستخدام tini
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["n8n", "start"]
