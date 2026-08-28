const CACHE = 'finance-plus-v2-6-1-dashboard-hotfix';
const STATIC_ASSETS = ['./manifest.json','./favicon.ico','./icons/icon.svg','./icons/icon-180.png','./icons/icon-192.png','./icons/icon-512.png'];

self.addEventListener('install', event => {
  event.waitUntil(caches.open(CACHE).then(cache => cache.addAll(STATIC_ASSETS)));
  self.skipWaiting();
});

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys => Promise.all(keys.map(k => caches.delete(k))))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', event => {
  if(event.request.method !== 'GET') return;

  if(event.request.mode === 'navigate' || event.request.destination === 'document'){
    event.respondWith(
      fetch(event.request, {cache:'no-store'})
        .catch(() => fetch('./index.html', {cache:'no-store'}))
    );
    return;
  }

  if(event.request.destination === 'style' || event.request.destination === 'script'){
    event.respondWith(fetch(event.request,{cache:'no-store'}).catch(()=>caches.match(event.request)));
    return;
  }

  event.respondWith(
    fetch(event.request)
      .then(response => {
        if(response && response.ok){
          const copy=response.clone();
          caches.open(CACHE).then(cache=>cache.put(event.request,copy));
        }
        return response;
      })
      .catch(()=>caches.match(event.request))
  );
});
