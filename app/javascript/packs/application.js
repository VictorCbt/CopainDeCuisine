require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
import initSelect2 from '../plugins/init_select2.js';


initSelect2();

loadDynamicBannerText();


