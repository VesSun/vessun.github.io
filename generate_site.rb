# encoding: utf-8

pesho = '<!DOCTYPE html>
<html>
	<head>
		<title>Vesselina Agova</title>
	<link href="../styles/vessys.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<div id ="content">
			<h1 id = "name">Vesselina Agova</h1>
			<div id="quote">
				<p>This page is only a test</p>
				<p>More to come: Soon!</p>
			</div>
			
			<head2> Contacts </head2>
			<div id="contact">
				<p><a href="https://www.facebook.com/vessy.stag" title = "Vessy on Facebook" target= "_blank">Facebook</a></p>
				<p><a href="https://github.com/vessun" title = "Vessy on GitHub" target= "_blank">Github</a></p>
				<p><a href="../bg/index.html" title = "switch on bg">БГ</a></p>

			</div>

			<div>
			<table id="table" border="1" style="width:300px">
				<tr>
					<th>Monday</th>
					<th>Tuesday</th>
					<th>Wednesday</th>
					<th>Thursday</th>
					<th>Friday</th>
				</tr>
				<tr id="colorTXT">
					<td>Free</td>
					<td>Yoga</td>
					<td>Init Lab</td>
					<td>Beer</td>
					<td>Beer</td>
				</tr>
			</table>
			
			</div>
	</body>
</html>'

File.write "bg.html", pesho