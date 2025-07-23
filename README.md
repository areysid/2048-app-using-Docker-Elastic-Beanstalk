# 🚀 Deploy the 2048 Web App Using Docker and AWS Elastic Beanstalk

This guide walks you through a 15–20 minute deployment of the popular [2048 game](https://github.com/gabrielecirulli/2048) using **Docker** locally and **AWS Elastic Beanstalk** on the cloud.

---

## 🐳 Running Locally with Docker

### 1. Clone the Source Code

```bash
git clone https://github.com/gabrielecirulli/2048.git
cd 2048
```
2. Create a Dockerfile
In the project directory, create a Dockerfile and paste the contents provided here (or as per your custom Dockerfile setup).

📁 Ensure your Dockerfile is in the root of the working directory.

3. Build the Docker Image
bash
Copy
Edit
docker build -t 2048-game .
4. Run the Docker Container
bash
Copy
Edit
docker run -d -p 80:80 2048-game
✅ After this, you should see a long string of characters — this means your container started successfully.

5. Access the Game
Open your browser and visit:

arduino
Copy
Edit
http://localhost:80
You should see the 2048 game running locally!

☁️ Deploying on AWS Elastic Beanstalk
1. Open AWS Management Console
Navigate to Elastic Beanstalk service.

2. Create a New Application
Click on Create Application.

Give it a suitable name (e.g., 2048-docker-app).

3. Create a New Environment
Choose Web server environment.

Platform: Select Docker.

4. Upload Your Docker Code
Under Application Code, choose Upload your code.

Upload the Dockerfile you created earlier (along with any required files, e.g., zipped project folder with the Dockerfile at the root).

5. Launch the Environment
Leave all other settings as default.

Click Create Environment.

6. Access the Deployed App
After a few minutes, once the health shows OK, Elastic Beanstalk will provide a domain link.

Visit the URL to view your deployed 2048 game online.

🎥 Video Walkthrough
Watch the full deployment process on YouTube:
📺 Deploy 2048 Using Docker & Elastic Beanstalk

🧾 Source Code
GitHub Repository: gabrielecirulli/2048

Happy Deploying! 🚀
