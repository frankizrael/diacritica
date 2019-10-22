<?php /* Template Name: arch detalle */
set_query_var('ENTRY', 'arch_detalle');
get_header();
$id = get_the_ID();
?>
<section class="fullheight detalle" style="background-image:url(<?php echo get_the_post_thumbnail_url($id); ?>);">
	<div class="abs-content">
		<div class="title">
			<div class="category"><?php the_field('category');?></div>
			<h1>Colegio Roosevelt Student Commons</h1>
			<div class="sub-category"><?php the_field('sub-category');?></div>
		</div>
		<div class="content">
			<?php if (have_posts()):
				while (have_posts()):
					the_post();
					the_content();
				endwhile;
			endif; ?>
		</div>
		<div class="stats">
			<div class="title"><?php the_field('title_stats');?></div>
			<div class="liststas">
				<?php 
					$list = get_field('stats');
					if (!empty($list)){
						foreach ($list as $li) {
							?>
					<div class="item-ss">
						<div class="title-l">
							<?php echo $li['title']; ?>
						</div>
						<div class="content-l">
							<?php echo $li['content']; ?>
						</div>
					</div>
							<?php
						}
					}
				?>					
			</div>
		</div>
	</div>
</section>
<?php get_footer();