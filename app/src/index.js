const express = require("express");

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.status(200).send(`
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DevOps Task</title>
        <style>
          body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #0f172a, #1d4ed8);
            color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
          }
          .card {
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 24px;
            padding: 40px;
            max-width: 720px;
            text-align: center;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.35);
          }
          h1 {
            color: #facc15;
            font-size: 34px;
            margin-bottom: 16px;
          }
          p {
            font-size: 18px;
            line-height: 1.6;
          }
          .badge {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background: #22c55e;
            color: #052e16;
            border-radius: 999px;
            font-weight: bold;
          }
        </style>
      </head>
      <body>
        <div class="card">
          <h1>DevOps Deployment Successful</h1>
          <p>Thank you Damolak for the DevOps task and the consideration.</p>
          <p>This application was deployed on AWS EC2 using Docker, Terraform and GitHub Actions.</p>
          <span class="badge">Healthy and Running</span>
        </div>
      </body>
    </html>
  `);
});

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "healthy",
    message: "Application is running",
    timestamp: new Date().toISOString()
  });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Application running on port ${PORT}`);
});

module.exports = app;
