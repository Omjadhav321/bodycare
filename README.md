# Detailed Prompt for BodyCare Pro E-commerce Website Development

Create a comprehensive e-commerce website for BodyCare Pro, a premium body care products company. The website should include both frontend and backend functionality with the following specifications:

## Project Overview
Develop a full-stack e-commerce platform for BodyCare Pro that sells natural and organic body care products. The site should have a clean, modern design with an earthy/natural color palette reflecting the brand values.

## Technical Requirements

### Frontend (Client-side)
**Technologies**: HTML5, CSS3, JavaScript (ES6+), Bootstrap (optional)
**Framework**: None (vanilla JS) or React.js (preferred)

**Pages & Components**:
1. **Homepage**
- Hero banner with call-to-action
- Featured products section
- Category highlights
- Testimonials carousel
- Newsletter signup

2. **Product Catalog**
- Filter by category (lotions, washes, scrubs, oils)
- Search functionality
- Sorting options (price, rating, popularity)
- Product cards with images, prices, ratings

3. **Product Detail Page**
- High-quality product images
- Description and ingredients
- Pricing and availability
- Customer reviews
- Add to cart functionality

4. **Shopping Cart**
- Item listing with quantities
- Price calculations (subtotal, tax, shipping)
- Promo code application
- Proceed to checkout option

5. **Checkout Process**
- Multi-step form (shipping, payment, review)
- Guest checkout and user account options
- Payment integration (Stripe/PayPal sandbox)
- Order confirmation

6. **User Account Area**
- Login/registration
- Profile management
- Order history
- Wishlist functionality

7. **Admin Dashboard** (protected area)
- Product management (CRUD operations)
- Order management
- User management
- Sales analytics

### Backend (Server-side)
**Technology Stack**: Node.js with Express.js
**Database**: MongoDB with Mongoose ODM
**Authentication**: JWT tokens with bcrypt password hashing

**API Endpoints**:
1. **Auth Routes**
- POST /api/auth/register
- POST /api/auth/login
- GET /api/auth/logout
- GET /api/auth/profile (protected)

2. **Product Routes**
- GET /api/products
- GET /api/products/:id
- POST /api/products (admin only)
- PUT /api/products/:id (admin only)
- DELETE /api/products/:id (admin only)

3. **Cart Routes**
- GET /api/cart (user-specific)
- POST /api/cart (add item)
- PUT /api/cart/:id (update quantity)
- DELETE /api/cart/:id (remove item)

4. **Order Routes**
- GET /api/orders (user-specific)
- POST /api/orders (create order)
- GET /api/orders/:id (order details)

5. **Admin Routes**
- GET /api/admin/orders (all orders)
- PUT /api/admin/orders/:id (update status)
- GET /api/admin/users (all users)
- DELETE /api/admin/users/:id (delete user)

### Database Schema
1. **Users**
- _id (ObjectId)
- name (String)
- email (String, unique)
- password (String, hashed)
- role (String: 'user' or 'admin')
- createdAt (Date)
- updatedAt (Date)

2. **Products**
- _id (ObjectId)
- name (String)
- description (String)
- price (Number)
- category (String)
- imageUrl (String)
- rating (Number)
- numReviews (Number)
- countInStock (Number)
- createdAt (Date)
- updatedAt (Date)

3. **Orders**
- _id (ObjectId)
- user (ObjectId, ref: 'User')
- orderItems (Array)
- name (String)
- qty (Number)
- image (String)
- price (Number)
- product (ObjectId, ref: 'Product')
- shippingAddress (Object)
- address (String)
- city (String)
- postalCode (String)
- country (String)
- paymentMethod (String)
- paymentResult (Object)
- id (String)
- status (String)
- updateTime (Date)
- itemsPrice (Number)
- taxPrice (Number)
- shippingPrice (Number)
- totalPrice (Number)
- isPaid (Boolean)
- paidAt (Date)
- isDelivered (Boolean)
- deliveredAt (Date)
- createdAt (Date)
- updatedAt (Date)

### Features & Functionality
1. **Responsive Design**: Mobile-first approach, works on all device sizes
2. **User Authentication**: Secure login/logout with JWT
3. **Shopping Cart**: Persistent cart using localStorage/sessionStorage
4. **Payment Integration**: Stripe API for secure payments
5. **Search & Filter**: Advanced product search capabilities
6. **Wishlist**: Save favorite products for later
7. **Reviews & Ratings**: Customers can rate and review products
8. **Order Tracking**: View order status and history
9. **Admin Panel**: Full CRUD operations for products and orders
10. **Newsletter Signup**: Email capture with Mailchimp integration (bonus)

### Design Requirements
- Color Palette: Earthy greens (#5d7a5d), cream (#f8f4e9), gold accents (#e2b35a)
- Typography: Clean, readable fonts (e.g., 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif)
- Imagery: High-quality lifestyle and product photography
- Icons: Font Awesome for UI icons
- Layout: Modern grid system with ample white space

### Performance & Security
- Input validation on both frontend and backend
- Password encryption with bcrypt
- SQL injection prevention through parameterized queries
- HTTPS enforcement in production
- Rate limiting for API endpoints
- CORS configuration for security
- Environment variables for sensitive data

### Deployment
- Frontend: Deploy to Netlify/Vercel
- Backend: Deploy to Heroku/Render
- Database: MongoDB Atlas (cloud database)
- Domain: bodycarepro.com (or subdomain)

### Bonus Features (Optional)
- Product recommendations based on purchase history
- Loyalty points program
- Gift card functionality
- Live chat support
- Blog section for skincare tips
- Social media integration

Provide the complete implementation including:
1. File structure organization
2. Complete HTML/CSS/JavaScript for frontend
3. Node.js/Express server code
4. Database models and schemas
5. API endpoint implementations
6. Authentication middleware
7. Deployment instructions
8. README with setup instructions 
