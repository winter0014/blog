<!-- 右侧文章<?php if(!defined('ucms'))exit; ?> -->
<div class="box">
	<p class="box_title">最新文章</p>
	<p class="box_content">
		<ul class="box_article_list">
			{{$set=array()}}
			{{$set['pagesize']=15}}
			{{$set['column']=id,title}}
			{{$articles=alist($set))}}
			{{loop $articles['list'] as $a}}
				<li><a href="{{$a['link']}}" target="_blank">{{$a['title']}}</a></li>
			{{/loop}}
		</ul>
	</p>
</div>