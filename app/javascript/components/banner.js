import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    const bannerElement = document.getElementById('banner-typed-text');

  new Typed('#banner-typed-text', {
    strings: ["tes copains", "ta famille"],
    typeSpeed: 125,
    loop: true
  });
}

export { loadDynamicBannerText };

