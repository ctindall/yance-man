site: _site/resume.pdf

_site/resume.pdf: _site/resume.html
	xvfb-run -a --server-args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf \
	-s letter  \
	-B 1.5in -L 0.5in -R 0.5in -T 0.5in \
	_site/resume.html _site/resume.pdf; \
	chmod 644 _site/resume.pdf; \
	rm _site/resume.html

_site/resume.html:
	jekyll build
