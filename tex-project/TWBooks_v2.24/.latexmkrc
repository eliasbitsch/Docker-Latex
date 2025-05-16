$out_dir = "build";
$pdf_mode = 1;
$pdflatex = "pdflatex -shell-escape -interaction=nonstopmode -synctex=1 -output-directory=$out_dir %O %S";
$clean_ext = "aux bbl bcf blg idx ilg ind lof log lot out run.xml toc synctex.gz";
$success_cmd = "cp $out_dir/%R.pdf .";