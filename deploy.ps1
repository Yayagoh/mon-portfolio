# --- Script de Déploiement Automatique ---
$User = "charles"
$IP = "192.168.1.31"
$DossierSite = "/var/www/html"

Write-Host "1. Génération du site Hugo..." -ForegroundColor Cyan
hugo

if ($?) {
    Write-Host "-> Site généré avec succès." -ForegroundColor Green
} else {
    Write-Host "ERREUR lors de la génération." -ForegroundColor Red
    Pause
    Exit
}

Write-Host "2. Envoi des fichiers vers la VM (Mot de passe demandé)..." -ForegroundColor Cyan
# On envoie le dossier 'public' dans le dossier perso de l'utilisateur (/home/charles)
scp -r public ${User}@${IP}:/home/${User}/

Write-Host "3. Installation sur le serveur Web..." -ForegroundColor Cyan
# On se connecte en SSH pour déplacer les fichiers au bon endroit
# Le -t permet de pouvoir taper le mot de passe sudo si besoin
ssh -t ${User}@${IP} "sudo rm -rf ${DossierSite}/* && sudo cp -r /home/${User}/public/* ${DossierSite}/"

Write-Host "------------------------------------------------" -ForegroundColor Green
Write-Host "   TERMINE ! Ton site est à jour." -ForegroundColor Green
Write-Host "------------------------------------------------" -ForegroundColor Green

# Pause pour avoir le temps de lire
Read-Host "Appuie sur Entrée pour fermer..."