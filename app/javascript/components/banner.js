import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    const bannerElement = document.getElementById('banner-typed-text');

 if (bannerElement) { // only build a map if there's a div#map to inject into
    new Typed(bannerElement, {
    strings:["tes copains", "ta famille"],
    typeSpeed: 125,
    loop: true
    });
  }
};

export { loadDynamicBannerText };

