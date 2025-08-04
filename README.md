# 🛡️ WeLearnSec Bank Docker Lab

A vulnerable e-commerce web application designed for practicing API web pentesting. This setup uses Docker to simulate a realistic lab environment with minimal system resource usage — no need to run a full Virtual Machine.

---

## 📦 Components

This lab environment includes:

- `welearnsec-bank`: A vulnerable PHP web application (cloned from [WeLearnSec GitHub](https://github.com/welearnsec/welearnsec-bank))
- `MariaDB`: MySQL-compatible database server
- `phpMyAdmin`: Web-based MySQL DB management at `localhost:8089`

---

## 🚀 Getting Started

### 1️⃣ Start the lab environment

Run the following command from the project directory:

```bash
docker-compose up --build
```

To reset the lab environment:

```bash
docker-compose down -v
```

## 📝 Additional Notes

### 📁 Directory Structure

After downloading this repository, make sure to clone the welearnsec-bank project into the same directory. The expected folder structure is:

```bash
.
├── config/
│   └── apache.conf
├── Dockerfile
├── docker-compose.yml
└── welearnsec-bank/
```

To clone vulnerable app:

```bash
git clone https://github.com/welearnsec/welearnsec-bank.git
```

Don't forget to update includes/config.php!

```bash
$servername = "db";
$username = "<CAN BE FOUND AT docker-compose.yml file>";
$password = "<CAN BE FOUND AT docker-compose.yml file>" ;
$dbname = "welearnsecbank";
```

### 🌐 Access the Application

The vulnerable app will be accessible at:

```bash
http://localhost:8088
```

PHPMyAdmin creds can be found at docker-compose.yml file.

## 🙏 Credits

- Vulnerable app by WeLearnSec
- Docker environment by damienmagdangal
