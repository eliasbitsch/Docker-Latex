$out_dir = "build";
$pdf_mode = 1;
$pdflatex = "pdflatex -interaction=nonstopmode -synctex=1 %O %S";
$clean_ext = "aux bbl bcf blg idx ilg ind lof log lot out run.xml toc synctex.gz";
$success_cmd = "cp build/%R.pdf .";