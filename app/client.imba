let page = "home"

global css html
	ff:sans

tag page-home

	def render

		<self>

			css self
				d:flex fld:row jc:space-evenly ai:center
				w:100% h:100% py:40px

			css .link
				h:100px
				transition:transform 250ms
				mb:20px
				rd:20px

			css h2
				c:blue1

			css .link@hover
				transform:scale(1.08)

			css .side
				d:flex fld:column jc:start ai:center

			<.side>
				<h2> "SOCIAL"
				<a href="https://www.youtube.com/c/familyfriendlymikey"> <svg.link src='./assets/youtube.svg'>
				<a href="https://www.instagram.com/familyfriendlymikey/"> <svg.link src='./assets/instagram.svg'>
				<a href="https://github.com/familyfriendlymikey"> <svg.link src='./assets/github.svg'>
			<.side>
				<h2> "APPS"
				<a.link[fs:100px td:none p:10px] href="https://fuzzyho.me"> "🏠"
				<a href="https://familyfriendlymikey.github.io/JILU/"> <img.link src='./assets/jilu.png'>
				<a href="https://familyfriendlymikey.github.io/FTO/"> <img.link src='./assets/fto.png'>

tag app-tabs

	def render

		<self>

			css self
				d:flex fld:row jc:space-around ai:center
				w:100% h:40px bg:cyan2

			css .tab
				@hover cursor:pointer
				fl:1
				d:flex fld:row jc:center ai:center
				h:100%
				c:#0d001c

			<.tab@click=(page = "home")> "HOME"
			<.tab@click=(page = "lists")> "LISTS"

tag app-table

	def render

		<self>

			css self
				w:100%

			css .header
				bg:white2 h:30px w:100%
				d:flex jac:center
				rd:5px
				mb:5px

			css .body
				d:flex fld:column jc:flex-start ai:center
				gap:5px

			css .row
				bg:white5
				d:flex jac:center
				h:25px w:100% fs:16px
				rd:5px
				cursor:pointer

			<.header>
				"Favorites List"

			<.body>
				for text in data
					<.row> text

tag page-lists

	def render

		<self>

			css self
				w:100% h:100%
				box-sizing:border-box
				p:50px

			<app-table
				data=[
					"Harry Potter"
					"Polaris"
					"Ali G"
					"Mandelbrot Set"
					"Tatsuro Yamashita"
					"Trader Joe's Ice Cream Sandwich"
					"Butternut Squash Triangoli"
					"Fresh Bread And Butter"
					"Wiley Wallaby Organic Classic"
					"The Ocean"
					"The Wind"
					"Mob Psycho"
					"One Piece"
					"Kinder Chocolate"
					"鱼香茄子煲"
					"Borat"
					"Sakanaction"
					"Joe Hisaishi"
					"Spirited Away"
					"Only Yesterday"
					"Rush Hour"
					"Sopranos"
					"Ylvis"
					"Yumi Arai"
				]
			>

tag app

	def render

		<self>

			css body
				d:flex fld:column jc:center ai:center m:0
				bg:#0f0f0f

			css self
				d:flex fld:column jc:flex-start ai:center h:100% w:100%

			<page-home>

			###
			<app-tabs>
			if page == "lists"
				<page-lists>
			else
				<page-home>
			###


imba.mount <app>
