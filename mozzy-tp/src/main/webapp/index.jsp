<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Application Java - Azure App Service</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, sans-serif; background-color: #eef2f7; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { background: #fff; padding: 30px 40px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); max-width: 500px; width: 100%; }
        h1 { color: #0078D4; font-size: 22px; margin-bottom: 10px; }
        .badge { background: #dff6dd; color: #107c10; padding: 5px 10px; border-radius: 4px; font-weight: bold; font-size: 13px; }
        .info-box { background: #f8f9fa; border-left: 4px solid #0078D4; padding: 12px; margin: 20px 0; font-size: 14px; }
        input[type="text"] { padding: 8px; width: 65%; border: 1px solid #ccc; border-radius: 4px; }
        button { padding: 8px 15px; background: #0078D4; color: white; border: none; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>
<div class="container">
    <span class="badge">PaaS Azure App Service - Actif</span>
    <h1>Application Web Java</h1>
    <p>Bienvenue, <strong>${visitorName != null ? visitorName : 'Visiteur'}</strong> !</p>

    <div class="info-box">
        <p><strong>Conteneur / Hôte Azure :</strong> ${serverHost != null ? serverHost : 'Instance App Service'}</p>
        <p><strong>Heure serveur :</strong> ${timestamp != null ? timestamp : 'En ligne'}</p>
        <p><strong>Runtime :</strong> Java 17 / Apache Tomcat</p>
    </div>

    <form action="status" method="get">
        <input type="text" name="user" placeholder="Entrez votre nom..." required>
        <button type="submit">Tester le Servlet</button>
    </form>
</div>
</body>
</html>