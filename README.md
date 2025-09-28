# 🍏 Fresh Fruits App

Fresh Fruits is a modern **e-commerce application** built with **Flutter** and **Supabase**, following the **MVVM architecture** and implementing the **Repository Pattern**.  

The app provides a seamless shopping experience, featuring authentication, product listings, filtering, and a structured project architecture.  
It can easily switch backends (e.g., Supabase ➝ API ➝ Firebase).

---

## ✨ Features

### 🔑 Authentication & User Management
- Sign Up & Sign In with email and password
- Google Sign-In integration
- Forgot password feature using OTP *(UI only, no logic yet)*
- Splash & Onboarding screens
- Authentication screens with form validation
- Supabase authentication with the **Repository Pattern**

---

### 🛍️ Product Management
- Connected to **Supabase** and fetched products
- Displayed product listings with **category-based filtering**
- Implemented **price filtering** in `StorageService` and `ProductRepo`
- Custom home screen UI:
  - 🔍 Search field *(UI only, not yet functional)*
  - 🎛️ Filter button with advanced options
- Fetched product images from Supabase Storage
- Created a **Product Details Screen** *(no cart interaction or reviews yet)*
- **Category Screen** with price filtering functionality

---

### 🛒 Cart & UI Enhancements
- Implemented **cart UI** with navigation
- Added new buttons:
  - ➕ Add & ➖ Remove product
  - Enhanced product filtering functionality
- Added **loading dialogs** and **error handling functions**
- Integrated **EasyRefresh** package for smoother interactions

---

### ❤️ Favorites System
- Ability to **mark and save favorite products**
- Efficient caching system for better performance
- Synchronized favorites across sessions
- Interactive **favorite toggle** with visual feedback
- **Profile Screen** to display favorite products
- Ability to change **name** and **email** from the profile

---

## 🚀 Technologies Used

- **Flutter** – For building the UI  
- **Dart** – Programming language  
- **Supabase** – Backend as a Service  
- **Cubit (Bloc Package)** – State management  
- **EasyRefresh** – UI interaction improvements  

---

## 📸 Screenshots
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/da991131-6eef-4f25-9a41-a38b18063db9" />*
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/6692a37c-13bc-4a89-94c1-1624b357e530" />*
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/99351a37-a4ec-43ad-8009-f2badac65e7d" />*
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/cfb60d00-261b-422c-bcd4-3dab53220694" />*
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/76e3941c-82f7-45a8-83c6-62e326b780ed" />*
*<img width="899" height="637" alt="image" src="https://github.com/user-attachments/assets/292fcb46-ba7f-4d64-9575-824a00f89b46" />*
*<img width="338" height="368" alt="image" src="https://github.com/user-attachments/assets/b1b2f552-9e0a-475a-8061-a7334db05055" /> <img width="520" height="368" alt="image" src="https://github.com/user-attachments/assets/ed85c4cd-52f2-4c3f-89ec-6604b5468b45" />*





---

## 👨‍💻 Author
Developed with ❤️ by **Salah Yasser**

