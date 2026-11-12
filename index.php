<?php
declare(strict_types=1);

$uri = $_SERVER['REQUEST_URI'];

function renderHeader(string $title): void {
    echo "<!DOCTYPE html><html><head><title>{$title}</title></head><body>";
    echo "<nav><a href='/'>Accueil</a> | <a href='/contact'>Contact</a></nav><hr>";
}

function renderFooter(): void {
    echo "<hr><footer>Application PHP 8.3 - Déployée sur Azure</footer></body></html>";
}

match ($uri) {
    '/', '/index.php' => (function () {
        renderHeader("Accueil");
        echo "<h1>Bienvenue sur mon app PHP 8.3</h1>";
        echo "<p>Ceci est une application simple dans un seul fichier.</p>";
        renderFooter();
    })(),
    
    '/contact' => (function () {
        renderHeader("Contact");
        echo "<h1>Page de contact</h1>";
        echo "<form method='post' action=''>
                <label>Nom:</label><br>
                <input type='text' name='name'><br>
                <label>Message:</label><br>
                <textarea name='message'></textarea><br>
                <button type='submit'>Envoyer</button>
              </form>";
        renderFooter();
    })(),

    default => (function () {
        http_response_code(404);
        renderHeader("404");
        echo "<h1>404 - Page non trouvée</h1>";
        renderFooter();
    })()
};
