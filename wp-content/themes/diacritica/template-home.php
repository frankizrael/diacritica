<?php /* Template Name: home */
set_query_var('ENTRY', 'homee');
get_header();
?>
<div class="preload-core">
	<div class="array_inside">
		<div class="logo-c">
			<?php if (!empty(get_field('logo','options'))){ ?>
                <img src="<?php the_field('logo','options'); ?>" alt="Diacritica">
                <?php } else { ?>
                    <svg xmlns="http://www.w3.org/2000/svg" width="113.702" height="20.064" viewBox="0 0 113.702 20.064">
                      <g id="DIACTRÍTICA" transform="translate(-617.04 140.664)">
                        <g id="Grupo_165" data-name="Grupo 165">
                          <path id="Trazado_4" data-name="Trazado 4" d="M617.72-134.863l-.68-1.14h3.581c4.881,0,7.9,3.3,7.9,7.482,0,4.081-3.02,7.521-7.9,7.521h-2.9Zm2.9,12.383a5.847,5.847,0,0,0,6.161-6.041,5.759,5.759,0,0,0-6.161-5.982h-1.24v12.023Z" fill="#fff"/>
                          <path id="Trazado_5" data-name="Trazado 5" d="M632.92-121h-1.66v-15h1.66Z" fill="#fff"/>
                          <path id="Trazado_6" data-name="Trazado 6" d="M646.442-123.82h-8.4l-1.3,2.82h-1.8l7.341-15.4,7.342,15.4h-1.88Zm-4.2-9.122-3.52,7.641h7.041Z" fill="#fff"/>
                          <path id="Trazado_7" data-name="Trazado 7" d="M650.04-128.481a7.932,7.932,0,0,1,8-7.922,8.481,8.481,0,0,1,4.2,1.1v1.76a7.614,7.614,0,0,0-4.221-1.26,6.193,6.193,0,0,0-6.221,6.341,6.029,6.029,0,0,0,6.282,6.281,8.079,8.079,0,0,0,4.16-1.16v1.7a8.46,8.46,0,0,1-4.16,1.041A7.637,7.637,0,0,1,650.04-128.481Z" fill="#fff"/>
                          <path id="Trazado_8" data-name="Trazado 8" d="M671.261-136v1.441H668.44V-121h-1.66v-13.562h-2.821V-136Z" fill="#fff"/>
                          <path id="Trazado_9" data-name="Trazado 9" d="M677.58-125.221a7.24,7.24,0,0,1-2.28.38V-121h-1.661v-13.863l-.68-1.14H675.3c3.48,0,6.041,2.141,6.041,5.5a5.405,5.405,0,0,1-2.32,4.541l2.66,4.961h-1.86ZM675.3-134.5v8.142h.32a3.924,3.924,0,0,0,4.021-4.081,3.966,3.966,0,0,0-4.021-4.061Z" fill="#fff"/>
                          <path id="Trazado_10" data-name="Trazado 10" d="M686.04-121h-1.661v-15h1.661Zm-.12-16.464h-1.441l1.741-3.2h1.9Z" fill="#fff"/>
                          <path id="Trazado_11" data-name="Trazado 11" d="M695.721-136v1.441H692.9V-121h-1.66v-13.562h-2.821V-136Z" fill="#fff"/>
                          <path id="Trazado_12" data-name="Trazado 12" d="M699.76-121H698.1v-15h1.661Z" fill="#fff"/>
                          <path id="Trazado_13" data-name="Trazado 13" d="M702.5-128.481a7.931,7.931,0,0,1,8-7.922,8.481,8.481,0,0,1,4.2,1.1v1.76a7.613,7.613,0,0,0-4.221-1.26,6.193,6.193,0,0,0-6.221,6.341,6.029,6.029,0,0,0,6.282,6.281,8.079,8.079,0,0,0,4.16-1.16v1.7a8.46,8.46,0,0,1-4.16,1.041A7.637,7.637,0,0,1,702.5-128.481Z" fill="#fff"/>
                          <path id="Trazado_14" data-name="Trazado 14" d="M727.561-123.82h-8.4l-1.3,2.82h-1.8l7.341-15.4,7.342,15.4h-1.881Zm-4.2-9.122-3.521,7.641h7.042Z" fill="#fff"/>
                        </g>
                      </g>
                    </svg>
                <?php } ?>
		</div>
		<div class="bottom-c">			
		</div>
		<canvas id="canvas"></canvas>
    	<script type="text/javascript" src="https://unpkg.com/zdog@1/dist/zdog.dist.min.js"></script>
		<script type="text/javascript">
			const LINE_W=50,BALL_W=8,COUNT=50,SPACING=14,illo=new Zdog.Illustration({element:"#canvas",dragRotate:!0,resize:"fullscreen"}),Line=new Zdog.Shape({path:[{x:50},{x:-50}],stroke:2,color:"#8e8e8e"}),Dot=new Zdog.Shape({stroke:16,color:"white"});for(let e=0;e<50;++e){const o=Line.copy({addTo:illo,rotate:{y:Zdog.TAU/50*2*e},translate:{y:14*e-350}});Dot.copy({addTo:o,translate:{x:-68}}),Dot.copy({addTo:o,translate:{x:68}})}illo.updateRenderGraph();const animate=()=>{illo.rotate.y+=.02,illo.updateRenderGraph(),requestAnimationFrame(animate)};animate();
		</script>
	</div>
</div>
<div class="decoration-lines">
    <a href="#" class="eggs egg-position1"></a>
    <a href="#" class="eggs egg-position2"></a>
    <a href="#" class="eggs egg-position3"></a>
    <a href="#" class="eggs egg-position4"></a>
    <a href="#" class="eggs egg-position5"></a>
</div>
<section class="heightFull" id="one">
	<div class="x-container heightFull">
		<div class="decoration-core-lines decoration-init-position">
			<span class="decoration-line_position_1"></span>
			<span class="decoration-line_position_2"></span>
		</div>
		<div class="center_v">			
			<div class="title">
				<h1><?php the_title(); ?></h1>
				<p class="pronunciation"><?php the_field('title_pronunciation');?></p>
			</div>
			<div class="x-flex">
				<div class="left">
					<div class="content-text">
						<div class="inside_content">
							<?php the_field('init_description');?>
						</div>
						<div class="phrase">
							<div class="phrase_content">
								<?php the_field('phrase');?>
							</div>
							<div class="phrase_autor">
								<?php the_field('phrase_autor');?>
							</div>
						</div>
					</div>
				</div>
				<div class="right">
					<div class="button_simple button_top">
						<a href="<?php the_field('arch_link'); ?>" class="btn btn_red">
							<p><?php the_field('arch_text'); ?></p>
							<span><?php the_field('arch_detail'); ?></span>
						</a>
					</div>
					<div class="button_simple button_bottom">
						<a href="<?php the_field('pm_link'); ?>" class="btn btn_blue">
							<p><?php the_field('pm_text'); ?></p>
							<span><?php the_field('pm_detail'); ?></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="origin">
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position1"></a>
	    <a href="#" class="eggs egg-position2"></a>
	</div>
	<div class="x-container">	
		<div class="decoration-core-lines decoration-origin-position">
			<span class="decoration-line_position_1"></span>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title">
					<h2><?php the_field('title_origin');?></h2>
					<p class="pronunciation"><?php the_field('title_origin_pronunciation');?></p>
				</div>
				<img src="<?php the_field('imagen_origin');?>">
			</div>
			<div class="right">
				<div class="content">
					<?php the_field('content_origin');?>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="curricula">	
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position3"></a>
	    <a href="#" class="eggs egg-position4"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-origin-position">
			<span class="decoration-line_position_1"></span>
			<span class="decoration-line_position_2"></span>
			<span class="decoration-line_position_3"></span>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title">
					<h2><?php the_field('title_curricula');?></h2>
					<p class="pronunciation"><?php the_field('title_curricula_pronunciation');?></p>
				</div>
				<div id="pp_alonso" class="item_ppl">
					<div class="imagen_core">
						<img src="<?php the_field('alonso_imagen');?>">
						<div class="core_content">
							<div class="title_content">
								<h3><?php the_field('alonso_fullname');?></h3>
								<p class="charge"><?php the_field('alonso_position');?></p>
							</div>
							<div class="description_content">
								<?php the_field('alonso_description');?>
							</div>
							<div class="description_social_content">
								<?php
									$social = get_field('alonso_social');
									if (!empty($social)) {
										foreach ($social as $s) {
											?>
									<a href="<?php echo $s['link']; ?>"><img src="<?php echo $s['image']; ?>"></a>
											<?php
										}
									}									
								?>
							</div>
						</div>
					</div>
				</div>
				<div id="pp_alonso_orbegoso" class="item_ppl">
					<div class="imagen_core">
						<img src="<?php the_field('alonso_orbegoso_imagen');?>">
						<div class="core_content">
							<div class="title_content">
								<h3><?php the_field('alonso_orbegoso_fullname');?></h3>
								<p class="charge"><?php the_field('alonso_orbegoso_position');?></p>
							</div>
							<div class="description_content">
								<?php the_field('alonso_orbegoso_description');?>
							</div>
							<div class="description_social_content">
								<?php
									$social = get_field('alonso_orbegoso_social');
									if (!empty($social)) {
										foreach ($social as $s) {
											?>
									<a href="<?php echo $s['link']; ?>"><img src="<?php echo $s['image']; ?>"></a>
											<?php
										}
									}									
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="imagen_pp">
					<img src="<?php the_field('curricula_imagen');?>">
				</div>
				<div id="pp_monica" class="item_ppl">
					<div class="imagen_core">
						<img src="<?php the_field('monica_imagen');?>">
						<div class="core_content">
							<div class="title_content">
								<h3><?php the_field('monica_fullname');?></h3>
								<p class="charge"><?php the_field('monica_position');?></p>
							</div>
							<div class="description_content">
								<?php the_field('monica_description');?>
							</div>
							<div class="description_social_content">
								<?php
									$social = get_field('monica_social');
									if (!empty($social)) {
										foreach ($social as $s) {
											?>
									<a href="<?php echo $s['link']; ?>"><img src="<?php echo $s['image']; ?>"></a>
											<?php
										}
									}									
								?>
							</div>
						</div>
					</div>
				</div>
				<div id="pp_denise" class="item_ppl">
					<div class="imagen_core">
						<img src="<?php the_field('denise_imagen');?>">
						<div class="core_content">
							<div class="title_content">
								<h3><?php the_field('denise_fullname');?></h3>
								<p class="charge"><?php the_field('denise_position');?></p>
							</div>
							<div class="description_content">
								<?php the_field('denise_description');?>
							</div>
							<div class="description_social_content">
								<?php
									$social = get_field('denise_social');
									if (!empty($social)) {
										foreach ($social as $s) {
											?>
									<a href="<?php echo $s['link']; ?>"><img src="<?php echo $s['image']; ?>"></a>
											<?php
										}
									}									
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="tropical">
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position5"></a>
	    <a href="#" class="eggs egg-position6"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-tropical-position">
			<span class="decoration-line_position_1"></span>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title">
					<h2><?php the_field('title_tropical');?></h2>
					<p class="pronunciation"><?php the_field('title_tropical_pronunciation');?></p>
				</div>
				<img src="<?php the_field('imagen_tropical');?>">
			</div>
			<div class="right">
				<div class="content">
					<?php the_field('content_tropical');?>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="patronage">
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position7"></a>
	    <a href="#" class="eggs egg-position8"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-patronage-position">
			<span class="decoration-line_position_1"></span>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title">
					<h2><?php the_field('title_patronage');?></h2>
					<p class="pronunciation"><?php the_field('title_patronage_pronunciation');?></p>
				</div>
			</div>
			<div class="right">
				<div class="content">
					<?php the_field('content_patronage');?>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="headquarters">	
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position7"></a>
	    <a href="#" class="eggs egg-position8"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-headquarters-position">
			<span class="decoration-line_position_1"></span>
		</div>
		<div class="x-flex">
			<div class="left">
				<div class="title">
					<h2><?php the_field('title_headquarters');?></h2>
					<p class="pronunciation"><?php the_field('title_headquarters_pronunciation');?></p>
				</div>
				<img src="<?php the_field('imagen_headquarters'); ?>">
			</div>
			<div class="right">
				<div class="content list-mode">
					<?php
						$list = get_field('list_headquarters');
						if (!empty($list)) {
							foreach ($list as $l) {
								?>
						<div class="list-mode-item">
							<h3><?php echo $l['title']; ?></h3>
							<div class="content">
								<?php echo $l['description']; ?>
							</div>
						</div>
								<?php
							}
						}									
					?>
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer();