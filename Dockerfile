# 🧱 الأساس: Node رسمي
FROM node:20-alpine

# إعداد مجلد العمل
WORKDIR /app

# نسخ الملفات
COPY package.json ./
COPY app.js ./

# تثبيت التبعيات
RUN npm install

# المنفذ
EXPOSE 5678

# تشغيل التطبيق
CMD ["node", "app.js"]
