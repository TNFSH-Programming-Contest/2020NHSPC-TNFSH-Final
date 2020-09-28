nothing:

pA-import:
	cmsImportTask -c 3 ./pA/ -u

pA-check:
	cd pA && > solutions-check.txt

pB-import:
	cmsImportTask -c 3 ./pB/ -u

pB-check:
	cd pB && > solutions-check.txt

pC-import:
	cmsImportTask -c 3 ./pC/ -u

pC-check:
	cd pC && > solutions-check.txt

pD-import:
	cmsImportTask -c 3 ./pD/ -u

pD-check:
	cd pD && > solutions-check.txt

pE-import:
	cmsImportTask -c 3 ./pE/ -u

pE-check:
	cd pE && > solutions-check.txt

pF-import:
	cmsImportTask -c 3 ./pF/ -u

pF-check:
	cd pF && > solutions-check.txt

import:
	cmsImportTask -c 3 ./pA/ -u
	cmsImportTask -c 3 ./pB/ -u
	cmsImportTask -c 3 ./pC/ -u
	cmsImportTask -c 3 ./pD/ -u
	cmsImportTask -c 3 ./pE/ -u
	cmsImportTask -c 3 ./pF/ -u

merge-pdf:
	cd pA && tps statement

	mkdir -p pA/attachments
	pdfunite cover.pdf pA/statement/index.pdf pB/statement/index.pdf pC/statement/index.pdf pD/statement/index.pdf pE/statement/index.pdf pF/statement/index.pdf pA/attachments/problems.pdf
	# exiftool -Title="109學年度資訊學科能力競賽臺南一中校內複選試題本" -overwrite_original pA/attachments/problems.pdf

	pdfunite cover.pdf pA/statement/index.pdf pA/statement/cover-and-pA.pdf
	exiftool -a -G1 pA/statement/index.pdf | grep -oP "PDF.+Title.*: \K(.+)" | xargs -I{} exiftool -Title="{}" -overwrite_original pA/statement/cover-and-pA.pdf
	rm pA/statement/index.pdf
	mv pA/statement/cover-and-pA.pdf pA/statement/index.pdf

pA-statement:
	cd pA && tps statement

pB-statement:
	cd pB && tps statement

pC-statement:
	cd pC && tps statement

pD-statement:
	cd pD && tps statement

pE-statement:
	cd pE && tps statement

pF-statement:
	cd pF && tps statement

statement:
	cd pA && tps statement
	cd pB && tps statement
	cd pC && tps statement
	cd pD && tps statement
	cd pE && tps statement
	cd pF && tps statement
