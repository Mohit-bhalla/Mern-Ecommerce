import Redis from "ioredis";
import dotenv from "dotenv";

dotenv.config();

// Use this configuration specifically for Upstash
export const redis = new Redis(process.env.UPSTASH_REDIS_URL, {
  maxRetriesPerRequest: null, // This prevents the "20 retries" crash
  enableReadyCheck: false,    // Upstash doesn't support the 'READY' check command
});

// IMPORTANT: Catch the error event so it doesn't crash your server
redis.on("error", (err) => {
  console.error("Redis Connection Error:", err);
});