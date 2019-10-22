import '../scss/pm.scss';
import Swiper from 'swiper';
import 'swiper/css/swiper.min.css';
import { TweenMax, CSSPlugin, EasePack, TimelineMax , gsap } from 'gsap';
import ScrollMagic from 'scrollmagic';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators';

let controller = new ScrollMagic.Controller();
//init
	let scene_1_1 = new ScrollMagic.Scene({
	     triggerElement: "#init"
	    })
	    .setTween("#init .decoration-line_position_1", 0.8, {css:{height:'510px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_1_2 = new ScrollMagic.Scene({
	     triggerElement: "#init"
	    })
	    .setTween("#init .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_1_3 = new ScrollMagic.Scene({
	     triggerElement: "#init"
	    })
	    .setTween("#init .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:1.5})
	    .addTo(controller);  
	let scene_1_4 = new ScrollMagic.Scene({
	     triggerElement: "#init"
	    })
	    .setTween("#init .left", 0.3, {css:{top:'0px',opacity:'1'}, delay:2.1})
	    .addTo(controller);
	let scene_1_5 = new ScrollMagic.Scene({
	     triggerElement: "#init"
	    })
	    .setTween("#init .right .button_simple", 0.3, {css:{top:'0px',opacity:'1'}, delay:2.1})
	    .addTo(controller);
//projects
var mySwiperInit = new Swiper('#projects .swiper-container', {
    speed: 400,
    pagination: {
        el: '#projects .swiper-pagination',
        clickable: true
    },
    autoplay: 2500,
    slidesPerView: 1
});
//services
	let scene_2_1 = new ScrollMagic.Scene({
	     triggerElement: "#services"
	    })
	    .setTween("#services .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_2_2 = new ScrollMagic.Scene({
	     triggerElement: "#services"
	    })
	    .setTween("#services .services_item", 0.8, {css:{opacity:'1'}, delay:0.8})
	    .addTo(controller);
	let scene_2_3 = new ScrollMagic.Scene({
	     triggerElement: "#services"
	    })
	    .setTween("#services .decoration-line_position_2", 0.8, {css:{height:'90%',opacity:'1'}, delay:1.6})
	    .addTo(controller);
//experience
	let scene_3_1 = new ScrollMagic.Scene({
	     triggerElement: "#experience"
	    })
	    .setTween("#experience .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_3_2 = new ScrollMagic.Scene({
	     triggerElement: "#experience"
	    })
	    .setTween("#experience .experience-rr ", 0.8, {css:{top:'0',opacity:'1'}, delay:0.8})
	    .addTo(controller);
//key_projects
	let scene_4_1 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_4_2 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_4_3 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_4_4 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .left .button_simple", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_4_5 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_4_6 = new ScrollMagic.Scene({
	     triggerElement: "#key_projects"
	    })
	    .setTween("#key_projects .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller);
//media
	let scene_5_1 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_5_2 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_5_3 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_5_4 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_5_5 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_5_6 = new ScrollMagic.Scene({
	     triggerElement: "#media"
	    })
	    .setTween("#media .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller);
//genius
	let scene_6_1 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_6_2 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_6_3 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_6_4 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_6_5 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_6_6 = new ScrollMagic.Scene({
	     triggerElement: "#genius"
	    })
	    .setTween("#genius .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller);