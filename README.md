# 🛒 Full-Stack E-Commerce Platform with Admin Dashboard (MERN)

A **production-grade e-commerce application** built with a modern **MERN stack**, focused on **scalability, security, and real-world payment flows**. This project covers everything from authentication and caching to Stripe payments, admin analytics, and a polished UI.

---
## 🚀 Features Overview

| 🔧 Infrastructure & Auth | 🗄️ Database & Caching |
| :--- | :--- |
| **Backend:** Express.js Scalable Architecture | **Primary DB:** MongoDB + Mongoose ODM |
| **Security:** JWT (Access & Refresh Tokens) | **Speed:** Redis (ioredis) for Product Caching |
| **Encryption:** Password hashing via Bcryptjs | **Storage:** Cloudinary API for Media |
| **Middleware:** Cookie-based protected routes | **Tasks:** Environment-based (dotenv) config |

| 🛒 E-Commerce Core | 💳 Payments & Sales |
| :--- | :--- |
| **Catalog:** Product & Category Management | **Gateways:** Secure Stripe Checkout Flow |
| **Shopping:** Zustand-powered persistent cart | **Promotions:** Dynamic Coupon/Discount System |
| **UX:** Toast notifications & Framer Motion | **Feedback:** Success & Failure handling |
| **Orders:** Seamless transition from cart to buy | **Analytics:** Real-time revenue insights |

| 🎨 Frontend & Design | 👑 Admin Suite |
| :--- | :--- |
| **Framework:** React 19 (Latest) | **Inventory:** Full CRUD (Create/Edit/Delete) |
| **Styling:** Tailwind CSS (Responsive Design) | **Intelligence:** Recharts for sales graphs |
| **State:** Zustand Global Stores | **UI:** Dashboard with 3-column navigation |
| **Animations:** Framer Motion Transitions | **Access:** Dedicated Admin-only routes |

---

## 📸 Application Pages & Layouts

### 🏠 Home Page
The storefront entry point. Features high-speed loading for featured products and dynamic category navigation powered by **Redis**.

![Home Page](./assets/home.png)

---

### 🛍️ Product Collections (Category-wise)
Deep-dive pages for specific inventories. Data is served with sub-second latency via the caching layer.

| Product Section |

 ![Shoes Page](./assets/shoes_page.png) 

---

### 🛒 Shopping Cart
A centralized hub for managing selected items before checkout with **Zustand** state management.

![Cart Page](./assets/cart.png)

---

### 🔐 Authentication (Split 50/50 Layout)
Modern split-screen design for onboarding.

| Login Page | Signup Page |
| :---: | :---: |
| ![Login](./assets/login.png) | ![Signup](./assets/signup.png) |

---

### 💳 Transaction Feedback
Direct feedback after the **Stripe** payment gateway process.

| Payment Success (Confetti) | Payment Failure |
| :---: | :---: |
| ![Success](./assets/purchase_success.png) | ![Fail](./assets/purchase_cancel.png) |

---

### 👑 Admin Dashboard (The Command Center)
A comprehensive internal toolset for managing the platform.

#### 📊 Sales Analytics & Insights
Visualizing business intelligence using **Recharts**.

![Analytics View](./assets/admin_analytic.png)

#### 📦 Inventory & Creation
Manage products and upload media via **Cloudinary**.

| Create Product Form | All Products Management |
| :---: | :---: |
| ![Create Product](./assets/admin_create_product.png) | ![Product List](./assets/admin_products.png) |

## 🧰 Tech Stack

### 🖥️ Frontend (Client-Side)
| Technology | Usage & Purpose |
| :--- | :--- |
| **React 19 (Vite)** | Modern UI development with high performance |
| **Zustand** | Lightweight, atomic global state management |
| **Tailwind CSS** | Utility-first styling for responsive design |
| **Framer Motion** | Smooth interactive animations and transitions |
| **Recharts** | Data visualization for sales and analytics |
| **React-Router** | Client-side routing and navigation |
| **Axios** | Efficient API requests and interceptors |
| **Lucide-react** | Clean, consistent iconography |

---

### ⚙️ Backend (Server-Side)
| Technology | Usage & Purpose |
| :--- | :--- |
| **Node.js** | High-performance JavaScript runtime |
| **Express.js** | Minimalist web framework for RESTful APIs |
| **MongoDB + Mongoose** | Scalable NoSQL database with schema modeling |
| **Redis (ioredis)** | High-speed caching layer for optimized performance |
| **JWT** | Secure authentication with Access & Refresh tokens |
| **Stripe** | Industry-standard secure payment processing |
| **Cloudinary** | Cloud-based media management and image uploads |
| **Bcryptjs** | Advanced password hashing and encryption |

## 🔒 Security Highlights

* Hashed passwords (bcrypt)
* Secure JWT implementation
* Role-based access control
* Protected admin routes
* Secure Stripe payment flow

---

## 🚀 Performance Optimizations

* Redis caching
* Optimized API responses
* Lazy loading components
* Efficient global state management

---

## 🛠️ Setup & Installation

```bash
# Clone repository
git clone https://github.com/yourusername/ecommerce-platform.git

# Backend setup
cd backend
npm install
npm run dev

# Frontend setup
cd frontend
npm install
npm run dev
```

---

## 📌 Environment Variables

```env
MONGO_URI=
REDIS_URL=
JWT_SECRET=
JWT_REFRESH_SECRET=
STRIPE_SECRET_KEY=
STRIPE_WEBHOOK_SECRET=
CLOUDINARY_CLOUD_NAME=
CLOUDINARY_API_KEY=
CLOUDINARY_API_SECRET=
```

---

## 🌟 Final Notes

This project is designed to **mirror real-world production systems** and is perfect for:

* Portfolio projects
* Learning full-stack development
* Understanding scalable backend design

If you like this project, give a star ⭐ to my repo 
