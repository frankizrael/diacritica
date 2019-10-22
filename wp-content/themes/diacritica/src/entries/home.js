import '../scss/home.scss';
import { TweenMax, CSSPlugin, EasePack, TimelineMax , gsap } from 'gsap';
import ScrollMagic from 'scrollmagic';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap';
import 'imports-loader?define=>false!scrollmagic/scrollmagic/uncompressed/plugins/debug.addIndicators';

$(window).on('load',function(){
	setTimeout(function(){
		$('#one .decoration-line_position_1').addClass('active');	
	},3600);	
	setTimeout(function(){
		$('#one .decoration-line_position_1').addClass('active_2');	
	},4800);
	setTimeout(function(){
		$('#one .decoration-line_position_2').addClass('active');	
	},5600);	
	setTimeout(function(){
		$('#one .decoration-line_position_2').addClass('active_2');	
	},6600);
	setTimeout(function(){
		$('#one .decoration-line_position_2').addClass('active_3');	
	},7700);
	TweenLite.to( $('#one .center_v .title') , 0.3, {css:{top:'0px',opacity:'1'}, delay:4.2});
	TweenLite.to( $('#one .center_v .left') , 0.3, {css:{top:'0px',opacity:'1'}, delay:5.2});
	TweenLite.to( $('#one .center_v .button_top') , 0.3, {css:{top:'0px',opacity:'1'}, delay:6.2});
	TweenLite.to( $('#one .center_v .button_bottom') , 0.3, {css:{top:'0px',opacity:'1'}, delay:7.1});
});

let controller = new ScrollMagic.Controller();
//origen
	let scene_1_1 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_1_2 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_1_3 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_1_4 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_1_5 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_1_6 = new ScrollMagic.Scene({
	     triggerElement: "#origin"
	    })
	    .setTween("#origin .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller);  
//curricula
	let scene_2_1 = new ScrollMagic.Scene({
	     triggerElement: "#curricula"
	    })
	    .setTween("#curricula .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_2_2 = new ScrollMagic.Scene({
	     triggerElement: "#curricula"
	    })
	    .setTween("#curricula .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_2_3 = new ScrollMagic.Scene({
	     triggerElement: "#pp_alonso"
	    })
	    .setTween("#curricula #pp_alonso", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.2})
	    .addTo(controller);
	let scene_2_4 = new ScrollMagic.Scene({
	     triggerElement: "#pp_alonso"
	    })
	    .setTween("#curricula .decoration-line_position_2", 0.8, {css:{height:'400px',opacity:'1'}, delay:0.5})
	    .addTo(controller);
	let scene_2_5 = new ScrollMagic.Scene({
	     triggerElement: "#pp_monica"
	    })
	    .setTween("#curricula .decoration-line_position_3", 0.8, {css:{height:'600px',opacity:'1'}, delay:0.5})
	    .addTo(controller);
	let scene_2_6 = new ScrollMagic.Scene({
	     triggerElement: "#pp_monica"
	    })
	    .setTween("#curricula #pp_monica", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.5})
	    .addTo(controller);
	let scene_2_7 = new ScrollMagic.Scene({
	     triggerElement: "#pp_alonso_orbegoso"
	    })
	    .setTween("#curricula .decoration-line_position_2", 0.8, {css:{height:'70%',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_2_8 = new ScrollMagic.Scene({
	     triggerElement: "#pp_alonso_orbegoso"
	    })
	    .setTween("#curricula #pp_alonso_orbegoso", 0.3, {css:{top:'0px',opacity:'1'}, delay:1})
	    .addTo(controller);
	let scene_2_9 = new ScrollMagic.Scene({
	     triggerElement: "#pp_denise"
	    })
	    .setTween("#curricula .decoration-line_position_3", 0.8, {css:{height:'75%',opacity:'1'}, delay:0.5})
	    .addTo(controller);
	let scene_2_10 = new ScrollMagic.Scene({
	     triggerElement: "#pp_denise"
	    })
	    .setTween("#curricula #pp_denise", 0.3, {css:{top:'0px',opacity:'1'}, delay:1})
	    .addTo(controller);
//tropical
	let scene_3_1 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_3_2 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_3_3 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_3_4 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_3_5 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_3_6 = new ScrollMagic.Scene({
	     triggerElement: "#tropical"
	    })
	    .setTween("#tropical .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller); 
//patronage
	let scene_4_1 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_4_2 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_4_3 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_4_4 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_4_5 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_4_6 = new ScrollMagic.Scene({
	     triggerElement: "#patronage"
	    })
	    .setTween("#patronage .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller); 
//headquarters
	let scene_5_1 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .decoration-line_position_1", 0.8, {css:{height:'110px',opacity:'1'}, delay:0})
	    .addTo(controller);
	let scene_5_2 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .title", 0.3, {css:{top:'0px',opacity:'1'}, delay:0.9})
	    .addTo(controller);
	let scene_5_3 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .decoration-line_position_1", 0.8, {css:{height:'310px',opacity:'1'}, delay:1.2})
	    .addTo(controller);  
	let scene_5_4 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .left img", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_5_5 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .right .content", 0.3, {css:{top:'0px',opacity:'1'}, delay:1.9})
	    .addTo(controller);
	let scene_5_6 = new ScrollMagic.Scene({
	     triggerElement: "#headquarters"
	    })
	    .setTween("#headquarters .decoration-line_position_1", 0.8, {css:{height:'90%',opacity:'1'}, delay:2.5})
	    .addTo(controller); 