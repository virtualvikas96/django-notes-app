# 📝 Django Notes App with Docker, MySQL & Nginx

This project is a **Django-based Notes App** containerized using **Docker**, using **MySQL** as the database and **Gunicorn** as the WSGI server, served by **Nginx** as a reverse proxy.

---

## 📦 Tech Stack

- **Backend**: Django, Gunicorn  
- **Database**: MySQL  
- **Web Server**: Nginx  
- **Containerization**: Docker, Docker Compose  

---

## 🚀 Features

- Django backend for managing notes  
- MySQL for data storage  
- Gunicorn as the application server  
- Nginx as a reverse proxy  
- Docker Compose to orchestrate services  
- Healthchecks for MySQL and Django containers  

---

## 📁 Project Structure

. ├── Dockerfile ├── docker-compose.yml ├── requirements.txt ├── nginx/ │ └── Dockerfile ├── data/ │ └── mysql/ │ └── db/ # MySQL volume ├── app/ │ └── backend/ # Django application code


---

## ⚙️ Setup & Run

### 1. Clone the Repository

git clone https://github.com/virtualvikas96/django-notes-app.git
cd django-notes-app

---

### 2. Build and Start Services
docker-compose up --build

The first run will build images and run:
Django migrations
Start MySQL, Gunicorn, and Nginx

---


### 🔌 Access the App
 🛠 Django Admin: http://localhost:8000/admin

 🌐 Nginx Proxy (Frontend): http://localhost

---


### 📂 Environment Variables
Environment variables for django_app service:
DB_NAME=test_db
DB_USER=root
DB_PASSWORD=root
DB_PORT=3306
DB_HOST=db_cont

You can manage them in the docker-compose.yml file or a separate .env file.

---


### ✅ Healthchecks
MySQL: Uses mysqladmin ping to confirm readiness

Django: Pings the admin page on port 8000 to ensure app is live

---


### 🔄 Stopping the App
docker-compose down

To remove volumes:
docker-compose down -v

---


### 🙌 Contributing
Feel free to fork, raise issues, or submit pull requests. Let's build together!







