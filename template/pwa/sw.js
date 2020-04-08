var cacheName = 'hello-pwa'; 
var filesToCache = [   
    './',   './index.html',   './css/style.css',   './js/main.js' ]; 
 
/* Démarrer le service worker et mettre en cache tout le contenu de l'application */
 self.addEventListener('install', 
 function(e) {   e.waitUntil(     
     caches.open(cacheName).then(function(cache) {       return cache.addAll(filesToCache);     })   ); }); 
 
/* Servir le contenu mis en cache si hors ligne */ 
self.addEventListener('fetch', function(e) {   e.respondWith(     caches.match(e.request).then(function(response) { return response || fetch(e.request);     })   ); });