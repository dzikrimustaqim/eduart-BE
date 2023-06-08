FROM node:16

# Menentukan direktori kerja di dalam container
WORKDIR /src/index.js

# Menyalin package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Menginstal dependensi aplikasi
RUN npm install

COPY . .

# Menjalankan aplikasi ketika container dijalankan
CMD [ "node", "index.js" ]
