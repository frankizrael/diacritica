<?php /* Template Name: arch */
set_query_var('ENTRY', 'arch');
get_header();
?>
<div class="decoration-lines">
</div>
<section class="init heightFull" id="init">
	<div class="x-container heightFull">
		<div class="decoration-core-lines decoration-init-position">
			<span class="decoration-line_position_1"></span>
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
					</div>
				</div>
				<div class="right">				
					<div class="button_simple">
						<div class="not_btn">
							<p><?php the_field('add_text'); ?></p>
							<span><?php the_field('add_detail'); ?></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="swiper-projects " id="projects">
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<?php
	        	$banners = get_field('banner');
	        	if (!empty($banners)){
	        		foreach ($banners as $banner) {
	        			?>		        
		        <div class="swiper-slide">
		        	<div class="banner_item" style="background-image: url('<?php echo $banner['imagen']; ?>');">
						<div class="banner_box">
							<div class="title">
								<h2><?php echo $banner['title']; ?></h2>
								<div class="pronunciation">
									<?php echo $banner['pronunciation']; ?>
								</div>
							</div>
							<div class="general_box">
								<h3><?php the_field('title_projects'); ?></h3>
								<div class="subtitle"><?php the_field('subtitle_projects'); ?></div>
								<div class="social">
									<?php
										$social = get_field('social_projects');
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
						<a href="<?php echo $banner['link']; ?>" class="fullB">
							<span><?php the_field('see_more'); ?></span>
						</a>
					</div>
		        </div>
	        			<?php
	        		}
	        	}
	        ?>
	    </div>
	    <div class="swiper-pagination"></div>
		</div>
	</div>
</section>
<section class="section" id="services">
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position5"></a>
	    <a href="#" class="eggs egg-position6"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-tropical-position">
			<span class="decoration-line_position_1"></span>
			<span class="decoration-line_position_2"></span>
		</div>
		<div class="title">
			<h2><?php the_field('title_services');?></h2>
			<p class="pronunciation"><?php the_field('title_services_pronunciation');?></p>
		</div>
		<div class="x-flex">
			<?php
	        	$services = get_field('services');
	        	if (!empty($services)){
	        		foreach ($services as $service) {
	        			?>		        
			        <div class="services_item">
			        	<div class="content-ss">
			        		<div class="content-ss--title">
			        			<h3><?php echo $service['title']; ?></h3>
			        			<div class="sub-title">
			        				<?php echo $service['subtitle']; ?>
			        			</div>
			        		</div>
			        		<div class="content-ss--content">
			        			<?php echo $service['content']; ?>
			        		</div>
			        	</div>
			        </div>
	        			<?php
	        		}
	        	}
	        ?>
		</div>
	</div>
</section>
<section class="section" id="experience">
	<div class="decoration-simplelines">
	    <a href="#" class="eggs egg-position5"></a>
	    <a href="#" class="eggs egg-position6"></a>
	</div>
	<div class="x-container">
		<div class="decoration-core-lines decoration-tropical-position">
			<span class="decoration-line_position_1"></span>
			<span class="decoration-line_position_2"></span>
		</div>
		<div class="title">
			<h2><?php the_field('title_experience');?></h2>
			<p class="pronunciation"><?php the_field('title_experience_pronunciation');?></p>
		</div>
		<div class="experience-rr">
			<?php
	        	$experiences = get_field('experiences');
	        	if (!empty($experiences)){
	        		foreach ($experiences as $experience) {
	        			?>		        
			        <div class="experience_item">
			        	<div class="experience_item__s">
			        		<div class="content-ss--title">
			        			<h3><?php echo $experience['title']; ?></h3>
			        			<div class="sub-title">
			        				<?php echo $experience['subtitle']; ?>
			        			</div>
			        		</div>
			        	</div>
			        </div>
	        			<?php
	        		}
	        	}
	        ?>
		</div>
	</div>
</section>
<section class="section" id="key_projects">
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
					<h2><?php the_field('title_key_projects');?></h2>
					<p class="pronunciation"><?php the_field('title_key_projects_pronunciation');?></p>
				</div>
				<div class="imagen-s">
					<div class="button_simple">
						<div class="not_btn">
							<p><?php the_field('add_text'); ?></p>
							<span><?php the_field('add_detail'); ?></span>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<div class="content">
					<?php the_field('content_key_projects');?>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="media">
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
					<h2><?php the_field('title_media');?></h2>
					<p class="pronunciation"><?php the_field('title_media_pronunciation');?></p>
					<div class="cont">
						<?php the_field('content_media');?>
					</div>
				</div>
				<div class="imagen-s">
					<img src="<?php the_field('imagen_media');?>">
				</div>
			</div>
			<div class="right">
				<div class="content">
					<?php the_field('content_add_media');?>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section" id="genius">
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
					<h2><?php the_field('title_genius');?></h2>
					<p class="pronunciation"><?php the_field('title_genius_pronunciation');?></p>
				</div>
				<div class="imagen-s">
					<img src="<?php the_field('imagen_genius');?>">
				</div>
			</div>
			<div class="right">
				<div class="content">
					<div class="content-flex">
						<div class="list-left">
							<?php the_field('content_genius');?>	
						</div>
						<div class="map-right">
							<div id="map" data-lat="<?php the_field('map_lat');?>" data-long="<?php the_field('map_long');?>" title="<?php the_field('map_title');?>"></div>
						</div>
					</div>					
				</div>
			</div>
		</div>
	</div>
</section>
<?php get_footer();