# 📈 CryptoCrazyRxMVVM

**CryptoCrazyRxMVVM** is an iOS application built with Swift that fetches and displays real-time cryptocurrency data using the MVVM architecture and Reactive Programming with RxSwift. It provides users with a clean, dynamic, and performant interface.

---

## ✨ Features

### 📊 Live Data Fetching
- Fetches up-to-date cryptocurrency information from a JSON dataset hosted on GitHub.
- Success and error states are managed using RxSwift.

### 🏗 Architecture
- Implements MVVM (Model-View-ViewModel) architecture.
- Uses RxSwift and RxCocoa for reactive programming and UI bindings.

### ⚡ Performance
- Asynchronous data fetching with automatic UI updates.
- Loading and error states are managed with PublishSubject.

---

## 🛠 Technologies Used

| Technology | Purpose                                   |
|------------|-------------------------------------------|
| Swift      | Primary programming language              |
| RxSwift    | Reactive programming and data stream management |
| RxCocoa    | UI bindings and reactive extensions       |
| MVVM       | Application architecture                   |

---

## 📂 Project Structure

- **Model/**  
  Data models (e.g., `Crypto.swift`)

- **Service/**  
  API calls and data downloading (`WebService.swift`)

- **ViewModel/**  
  UI logic and data management (`CryptoViewModel.swift`)

- **View/**  
  User interface components

---

## 🧩 Key Files

### CryptoViewModel.swift
- Fetches cryptocurrency data from the web service and publishes it via RxSwift's PublishSubjects.
- Manages loading and error states.

### WebService.swift
- Downloads JSON data from a URL.
- Returns success or failure via Result type.

---

## 📈 How It Works

1. When the app launches, `CryptoViewModel` triggers a data fetch request.
2. `WebService` downloads and parses the JSON data.
3. Data is sent to the View layer via PublishSubjects.
4. The UI updates automatically to display the list.
5. Loading and error states are shown appropriately to the user.

---

## 🚀 Installation and Running

1. Clone the repository:  
```bash
git clone https://github.com/xecxecikk/CryptoCrazyRxMVVM.git
