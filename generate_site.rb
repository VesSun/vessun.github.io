# encoding: utf-8

site = '<!DOCTYPE html>
<html>
<head>
	<title>%{page_title}</title>
	<link href="../styles/vessys.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="right">
		<h1 id="name">%{name}</h1>
		
		<div id="quote">
			%{quote}
		</div>
		<div class="picture_right"><img src="%{picture_right}" height="350px" width="200px"></div>
			
		<div id="contact">
			<p>
			<a class="imglink" href="mailto:vesselina.agova@gmail.com"><img src="../images/icons/gmail_button.png" title="Gmail" height="30px" width="30px"></a>

			<a href="https://www.facebook.com/vessy.stag" target="_blank"><img src="../images/icons/social_facebook_box_blue.png" title="Facebook" height="30px" width="30px"></a>

			<a href="https://github.com/vessun" target="_blank"><img src="../images/icons/github-154769_640.png" title="GitHub" height="30px" width="30px"></a>

			<a href="http://bg.linkedin.com/pub/vesselina-agova/88/422/a3b/" target="_blank"><img src="../images/icons/linkedin.png" title="LinkedIn" height="30px" width="30px"></a>

			<a href="http://vessun.deviantart.com/" target="_blank"><img src="../images/icons/deviant_art_button_by_tpbarratt-d352lhw.png" title="DevianArt" height="30px" width="30px"></a>
			</p>
		</div>

		<div id="switch">
			<p><a href="%{switch_adr}"><img src="%{switch_pic}" title="%{switch_title}" height="25px" width="25px"></a></p>
		</div>	
	</div>
		
	<div class ="left">
		<div class="picture"><img src="../images/Pic_left.jpg" height="590px" width="690px"></div>
	</div>
</body>
</html>'


bg = {
	:page_title => 'Веселина Агова',
	:name => 'Веселина Агова',
	:quote => '<p>Тази страница е тестова.</p>
				<p>Новости: Скоро!</p>',
	:picture_right => '../images/Vruzki.png',
	:switch_adr => '../en/index.html',
	:switch_pic => '../images/icons/english-button.png',
	:switch_title => 'switch on eng',
}

en = {
	:page_title => 'Vesselina Agova',
	:name => 'Vesselina Agova',
	:quote => '<p>This page is only a test.</p>
				<p>More to come: Soon!</p>',
	:picture_right =>'../images/Contacts.png',
	:switch_adr => '../bg/index.html',
	:switch_pic => '../images/icons/bulgaria_button.png',
	:switch_title => 'switch on bg',
}

bg_html = site % bg
en_html = site % en

File.write "./en/index.html", en_html
File.write "./bg/index.html", bg_html