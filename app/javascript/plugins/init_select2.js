
import $ from 'jquery';
import 'select2'
import 'select2/dist/css/select2.min.css'

const initSelect2 = () => {
  $('.select2').select2({width: '100%'}); // (~ document.querySelectorAll)
};


export default initSelect2


