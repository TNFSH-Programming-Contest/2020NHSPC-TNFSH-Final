nothing:

pA-import:
	cmsImportTask -c 3 ./pA/ -u -S

pA-check:
	cd pA && > solutions-check.txt

pB-import:
	cmsImportTask -c 3 ./pB/ -u -S

pB-check:
	cd pB && > solutions-check.txt

pC-import:
	cmsImportTask -c 3 ./pC/ -u -S

pC-check:
	cd pC && > solutions-check.txt

pD-import:
	cmsImportTask -c 3 ./pD/ -u -S

pD-check:
	cd pD && > solutions-check.txt

pE-import:
	cmsImportTask -c 3 ./pE/ -u -S

pE-check:
	cd pE && > solutions-check.txt

pF-import:
	cmsImportTask -c 3 ./pF/ -u -S

pF-check:
	cd pF && > solutions-check.txt

import:
	cmsImportTask -c 3 ./pA/ -u -S
	cmsImportTask -c 3 ./pB/ -u -S
	cmsImportTask -c 3 ./pC/ -u -S
	cmsImportTask -c 3 ./pD/ -u -S
	cmsImportTask -c 3 ./pE/ -u -S
	cmsImportTask -c 3 ./pF/ -u -S

merge-pdf:
	cd pA && tps statement
	pdfunite pA/statement/index.pdf pB/statement/index.pdf pC/statement/index.pdf pD/statement/index.pdf pE/statement/index.pdf pF/statement/index.pdf problems.pdf
	exiftool -Title="109學年度資訊學科能力競賽臺南一中校內複選試題本" -overwrite_original problems.pdf
	# pdfunite cover.pdf pA/statement/index.pdf pA/statement/cover-and-pA.pdf
	mkdir -p pA/attachments
	mv problems.pdf pA/attachments
	# rm pA/statement/index.pdf
	# mv pA/statement/cover-and-pA.pdf pA/statement/index.pdf
	# cmsImportTask -c 3 ./pA/ -u -S/

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
