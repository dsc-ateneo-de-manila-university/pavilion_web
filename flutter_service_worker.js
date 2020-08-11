'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "ms-icon-310x310.png": "914a269a46255f79c2e66ebcabac2f15",
"apple-icon-76x76.png": "e4edeb096a2514689bcace89d27bccc5",
"apple-icon-60x60.png": "90ac578743fe174b9919db3133fd6a98",
"apple-icon-57x57.png": "177585fb19699feb31e8c4fb4a950dc7",
"apple-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"ms-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"apple-icon-72x72.png": "df4467890a54e592d2f0584dd2a64658",
"apple-icon-precomposed.png": "ed714f6a8a77cf3e2c972e47db40599e",
"browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"apple-icon-114x114.png": "430ac3757c11f77cb59b4af2fda05389",
"android-icon-36x36.png": "0bc7ea7c7c85a6dc6b20f10dcdf0c563",
"apple-icon.png": "ed714f6a8a77cf3e2c972e47db40599e",
"main.dart.js": "f8c5b0e53fa2308a7b62689aca4402a7",
"index.html": "8f913b2d297b649229b6ad1d5140f67e",
"/": "8f913b2d297b649229b6ad1d5140f67e",
"apple-icon-180x180.png": "b0a61a55b3551e7e6d31c2af642e81aa",
"android-icon-144x144.png": "a70d9aac74f796297560082d3b5174ba",
"favicon-96x96.png": "b9423849b36acad1cfecfaa364b1f2ac",
"manifest.json": "00e0b69b49487ce4f9ff0c5fac8fda49",
"apple-icon-152x152.png": "c67be2f44bbc0c55f9b48c901cc72da8",
"android-icon-72x72.png": "df4467890a54e592d2f0584dd2a64658",
"favicon-16x16.png": "d72a451ff342639b021d5df03c172563",
"ms-icon-70x70.png": "8720437a718628f26e940595774840c7",
"apple-icon-120x120.png": "d65548534eb16a4e11221bb3c8118273",
"android-icon-192x192.png": "7f44cb14872b01028c6243ffde61e06d",
"favicon-32x32.png": "64a22ace2b6c6145d4058d181ae7a564",
"android-icon-48x48.png": "79145846b4f0acb63279992c3e27258e",
"assets/FontManifest.json": "acd0a709deb077ec3ed067722d1cf365",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/AssetManifest.json": "20df8ad2f9e3b92ccabd5d545041f606",
"assets/NOTICES": "e6ef8b9ba73a616e63e815da7abc0e9e",
"assets/assets/data/lions.json": "ee2458e39a9f3d4c86d0f9d1a42138f9",
"assets/assets/data/coa.json": "41631a789cb03040339e3ac4dc5cc3a9",
"assets/assets/icons/org-bodies.png": "56f4236225c2ac94490e073ba5e406b6",
"assets/assets/icons/tracker_active.png": "bfba3d0eef4b75f23c12357a2c6432fd",
"assets/assets/icons/org_bookmark.png": "538054a3efd5dfaa649190d7c4d91299",
"assets/assets/icons/list.png": "4c605691deacc1806a6e7a43b8af3669",
"assets/assets/icons/categories.png": "336136e2108c093592f08f082e952d82",
"assets/assets/icons/applied.png": "eef26d6b17b24aba418b32977dd732f6",
"assets/assets/icons/list_bookmark.png": "d816cf60fd9f92275fb57db5b4917793",
"assets/assets/icons/saved.png": "ebac04654ad796d9e5e2530a815a7558",
"assets/assets/icons/list_active.png": "8c83745bac25d79f3ca70191d9763936",
"assets/assets/icons/alphabetical.png": "d87f3dc55a939cf854164277bc48700f",
"assets/assets/icons/home.png": "ea55a4eeb9846c300fcccdbe6b535c76",
"assets/assets/icons/home_active.png": "9dc6c5a3d91b399004574c622455cab1",
"assets/assets/icons/fb.png": "dc35e56ff2eb3b734340c63f03502692",
"assets/assets/icons/twitter.png": "8ff19bcaebf05251b0787ec4d0ac3024",
"assets/assets/icons/search.png": "a3284f003a3060e5518e1fc7f07083c6",
"assets/assets/icons/org_bookmark_active.png": "847484c16e315df0f4cfaaa8f7c07fef",
"assets/assets/icons/web.png": "e8db39637b956e1db21e46c64570e21c",
"assets/assets/icons/tracker.png": "19e84636fecf0be0f7658425c3238922",
"assets/assets/icons/ig.png": "0941e3fca70afbc81d30b9f9fab0b6ab",
"assets/assets/icons/settings.png": "eeb85b2d0801c8aaf6f348d6e205c9d8",
"assets/assets/icons/settings_active.png": "94f1f1b2fd30fe96a8760fc17c775944",
"assets/assets/fonts/Nunito-Black.ttf": "6abf597a1f3f44fd10bdcb7b86b494f0",
"assets/assets/fonts/Nunito-SemiBoldItalic.ttf": "cc0b18c6b7545c4446859f76fb2f7efb",
"assets/assets/fonts/Nunito-BlackItalic.ttf": "d9a817716cae511d364b91b69dbf34b8",
"assets/assets/fonts/Nunito-ExtraLightItalic.ttf": "c878bb8e559dd2f54f3262b98d194e9c",
"assets/assets/fonts/Nunito-BoldItalic.ttf": "534bd4bc232fb17ff48c931ff585bbad",
"assets/assets/fonts/Nunito-ExtraBold.ttf": "19caf1c06e022593ea4657734d691c86",
"assets/assets/fonts/Nunito-LightItalic.ttf": "25df63848c38644bc5db9889e37cc92d",
"assets/assets/fonts/Nunito-ExtraBoldItalic.ttf": "0c327829daf4a70d53a4ff94a91021cc",
"assets/assets/fonts/Nunito-SemiBold.ttf": "76ae20d4d4b7d46e613d2581512fcf73",
"assets/assets/fonts/Nunito-Light.ttf": "6a4fadd273f85b2ae8c6ffadbcf7beec",
"assets/assets/fonts/Nunito-ExtraLight.ttf": "4f3d2e011a08fae118e258bcaf0dfa13",
"assets/assets/fonts/Nunito-Bold.ttf": "1cd294a771f26752bbb8d8d5210f6412",
"assets/assets/fonts/Nunito-Italic.ttf": "80150d05eb36a3c810bf33899a8abdfd",
"assets/assets/fonts/Nunito-Regular.ttf": "d2e691bc4a2b696929172cb3d22ce8ba",
"assets/assets/orgs/dsc/logo.png": "51d3dd904c56418c1a6cac808d30fbdf",
"assets/assets/orgs/dsc/hacks.png": "b8dd9eb895a30c0d57e330c9fa34269f",
"assets/assets/orgs/dsc/tah.png": "3a1eae22dd72c7879bca47ff70ec091d",
"assets/assets/orgs/dsc/csj.png": "10d8e89ebb151f94febc7c2769221ca4",
"assets/assets/orgs/dsc/cover.png": "9fc9ac8449b71ccd36c86dc5eacd3a5a",
"assets/assets/team/ceek.png": "06d1dcae596463d4309fe7d103b8284c",
"assets/assets/team/polly.png": "de1ec3182086877b63c6cfdd9c50b5f4",
"assets/assets/team/franz.png": "242bca8570320cc5e62a13b3be920257",
"assets/assets/team/jeth.png": "abb435d53a435b81a7a53114baf2977f",
"assets/assets/team/auds.png": "d2b29ae185bd9bf8f8c8a7113ed5c5e1",
"assets/assets/team/harvs.png": "f65eccb04f5d0dca89214d75f50d65d5",
"assets/assets/flutter.png": "d21f1eecaeaab081ba7efec1721c0712",
"assets/assets/dsc.png": "bd954ceeeb42b91899ebe1c3b0d79850",
"assets/assets/images/logo.png": "7146bbf3779865a8c2e6afc1b151f686",
"assets/assets/images/saved_empty.png": "a73fa26744cedcf103b9e6f7a240c37d",
"assets/assets/images/DSCL%2520logo.png": "543fa68492d64422000f5d98ada67f10",
"assets/assets/images/maintenance.png": "edb4ca5fc2557f44be72cb61ef7e886a",
"assets/assets/images/guest.png": "f2f2db1575325755ed7b62ed28d2cccd",
"assets/assets/images/placeholder.png": "fbce5701cbeab39c7248cef7df75442d",
"assets/assets/images/applied_empty.png": "0b967d8f6b79bd3956f097f3b75a5b70",
"assets/assets/bodies/lions/logo.png": "33e6650e2e7dd110e05750350d6d7428",
"assets/assets/bodies/lions/technology.png": "ff6e4a8714b5b73d31d6f1f642109421",
"assets/assets/bodies/lions/arts.png": "ad4983a609d811c33014ae5d8e51f95f",
"assets/assets/bodies/lions/adventure.png": "c8e6c5380b26746c03269f7900294549",
"assets/assets/bodies/lions/language.png": "cd6b0c2544b1454a0e09f59405048b28",
"assets/assets/bodies/lions/circle.png": "94bf6eb6f7b29a21f1ffffdf9948f447",
"assets/assets/bodies/lions/business.png": "9c973d7cfd753be731c07cb984658555",
"assets/assets/bodies/lions/culture.png": "9d3ab7de4650e2591d4b45d40c009d73",
"assets/assets/bodies/lions/community.png": "2d6cbcf80ebdcd474acf6c00b4ff990c",
"assets/assets/bodies/lions/bookmark.png": "dc95a85e7346517ce6156d21e775e65e",
"assets/assets/bodies/lions/international.png": "1614d26e319009becb71e15cfe98c7e4",
"assets/assets/bodies/lions/spiritual.png": "a6f589f4773b8843977270f91823b8f4",
"assets/assets/bodies/lions/education.png": "b97270b594b7da9a6b7e8eae46ffb1a1",
"assets/assets/bodies/lions/bookmark_active.png": "59f44bcdac2418c80b02289c5c36c8ae",
"assets/assets/bodies/lions/home-org.png": "4d77e1b2334fd6344752f90c1a98efb5",
"assets/assets/bodies/lions/music.png": "db72e1921ffee2b04cae600151eeaf76",
"assets/assets/bodies/lions/lifestyle.png": "cf2822e0f4126cbef1c93d1a0e8160e2",
"assets/assets/bodies/lions/environment.png": "9f97035f5a4c999cfbcb35309293e16a",
"assets/assets/bodies/lions/literature.png": "b56cd25cdadb4eb52567d1df60c88068",
"assets/assets/bodies/lions/design.png": "5bcc39fc754bd76fb1ac0609a33aff39",
"assets/assets/bodies/coa/analysis-discourse.png": "58a3faa7f4c6eb9a97f388e7de5f19eb",
"assets/assets/bodies/coa/sector-based.png": "4fb1e1ba4adc286f2d1a910ce2e359e1",
"assets/assets/bodies/coa/logo.png": "2eeaff68db98f3c041acd18e374b1c13",
"assets/assets/bodies/coa/health-environment.png": "17f31df030aad73d5d08dc29b9b4b9dd",
"assets/assets/bodies/coa/science-technology.png": "103fbbcf83df1f49ab93b6c8738efdab",
"assets/assets/bodies/coa/faith-formation.png": "cd3b97b2c79c12e1fd2289e7444c099e",
"assets/assets/bodies/coa/business.png": "442432f70b597baf124c0097c21014c1",
"assets/assets/bodies/coa/intercultural-relations.png": "b01f74b4c328ae5f2587da418b7eb826",
"assets/assets/bodies/coa/bookmark.png": "b65e01373ef3988a7cfd1d3d37a9d3c4",
"assets/assets/bodies/coa/bookmark_active.png": "760cb93d92bf65316f9f39806335d5d3",
"assets/assets/bodies/coa/performing-arts.png": "0cb4833658295329f8e9446a904fba05",
"assets/assets/bodies/coa/media-arts.png": "a6a6cbd7c704410ee4f27a6cf0a7ecba",
"assets/assets/bodies/coa/cover.png": "32e738219aa620740149b5d7ed96b1f4",
"assets/assets/bodies/student-groups/logos.png": "7485917a0cc429767244b511570ec8c0",
"assets/assets/bodies/cop/logos.png": "9da8e466f7366c733978bd996fb8f040",
"android-icon-96x96.png": "b9423849b36acad1cfecfaa364b1f2ac",
"ms-icon-150x150.png": "e88daa697c0eb5177c988df6f154e324",
"favicon.ico": "2f092374158efddf6abbd074f5887045"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
