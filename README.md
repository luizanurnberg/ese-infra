# ese-infra

Repository for managing the microservices of the **Service-Oriented Software Engineering** course.  
This infrastructure is based on **Node.js** and uses **Docker** for container orchestration.

---

## 🧾 Steps to Run the Project

1. **Add GitHub to known SSH hosts**  
   Run the command in any terminal:
   ```bash
   ssh-keyscan github.com >> ~/.ssh/known_hosts
   ```

2. **Create a `.env` file**  
   In the root of the project, create a `.env` file with the same variables described in `env-example.txt`.

3. **Clone the microservices**  
   Navigate to the `scripts` folder and run:
   ```bash
   ./clone-services.sh
   ```

4. **Distribute the env file**  
   Copy the `env-example.txt` (or `.env`) to each installed microservice.

5. **Install dependencies**  
   Inside each microservice folder, run:
   ```bash
   npm install
   ```

6. **Run the project**  
   From the root of the project, execute:
   ```bash
   docker-compose up --build
   ```

7. **If changes are made to services or volumes**  
   Clean Docker and repeat step 4:
   ```bash
   docker system prune -af --volumes
   ```

---

## 🛠️ Technologies

- Node.js
- Docker & Docker Compose
- Shell scripting (`.sh`)

---

## 📁 Structure

```
ese-infra/
├── scripts/
│   └── clone-services.sh
├── env-example.txt
├── .env                 # (You must create this file)
├── docker-compose.yml
└── README.md
```

---

## 📌 Notes

- This project assumes the microservices are hosted on GitHub and require SSH access.
- All services must support `.env` configuration for environment variables.
