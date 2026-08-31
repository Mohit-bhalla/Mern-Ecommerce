# ---------- Stage 1: Build frontend ----------
FROM node:20-alpine AS frontend-build
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ ./
RUN npm run build

# ---------- Stage 2: Backend + serve frontend build ----------
FROM node:20-alpine AS production
WORKDIR /app

# Install backend deps only
COPY package*.json ./
RUN npm install --omit=dev

# Copy backend source
COPY backend/ ./backend/

# Copy built frontend into a location backend can serve
COPY --from=frontend-build /app/frontend/dist ./frontend/dist
# ^ use ./frontend/build instead of dist if you're using Create React App

EXPOSE 5000

CMD ["node", "backend/server.js"]




# # 1. Make code changes
# 2. Rebuild
docker build -t yourdockerhubusername/ecommerce-platform:v1.0.1 .

# 3. Push new version
docker push yourdockerhubusername/ecommerce-platform:v1.0.1

# 4. Update the image tag in Render dashboard (Settings → Image)
# 5. Manually deploy, or Render redeploys automatically if you kept tag as `latest` and enabled auto-deploy