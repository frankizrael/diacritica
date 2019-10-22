// Import styles
import './scss/app.scss';

// Import scripts
import 'bootstrap/js/src/dropdown';
import TweenMax from "gsap/TweenMax";
import CSSPlugin from "gsap/CSSPlugin";
import TweenLite from "gsap/TweenLite";

if ($('.preload-core').length == 0) {
    //no tiene preload
    TweenLite.to( $('.decoration-lines') , 0.3, {css:{top:'55px'}, delay:0.2});
} else {
	//tiene preload
	$(window).on('load',function(){
		setTimeout(function(){
			$('.preload-core .bottom-c').addClass('active');
		},800);
		TweenLite.to( $('.preload-core .logo-c svg') , 0.5, {css:{width:'113px',height:'25px'}, delay:1.3});
		TweenLite.to( $('.preload-core .logo-c') , 0.5, {css:{top:'12px'}, delay:2});
		TweenLite.to( $('.preload-core canvas') , 0.3, {css:{opacity:'0',pointerEvents:'none'}, delay:1.8});
		TweenLite.to( $('.preload-core .array_inside') , 0.3, {css:{height:'55px'}, delay:2.5});	
		TweenLite.to( $('.decoration-lines') , 0.3, {css:{top:'55px'}, delay:3});
		setTimeout(function(){
			$('.preload-core').hide();	
		},2900);	
	});
}