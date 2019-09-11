#!/bin/bash

clean () {
    rm *.aux 2> /dev/null
    rm *.bbl 2> /dev/null
    rm *.bcf 2> /dev/null
    rm *.blg 2> /dev/null
    rm *.idx 2> /dev/null
    rm *.ilg 2> /dev/null
    rm *.ind 2> /dev/null
    rm *.log 2> /dev/null
    rm *.ptc 2> /dev/null
    rm *.glo 2> /dev/null
    rm *.run.xml 2> /dev/null
    rm *.toc 2> /dev/null
    rm *.acn 2> /dev/null
    rm *.acr 2> /dev/null
    rm *.alg 2> /dev/null
    rm *.glg 2> /dev/null
    rm *.gls 2> /dev/null
    rm main.ist 2> /dev/null
    rm *.loa 2> /dev/null
    rm *.lof 2> /dev/null
    rm *.lot 2> /dev/null
    rm *.mw 2> /dev/null
    rm *.slg 2> /dev/null
    rm *.slo 2> /dev/null
    rm *.sls 2> /dev/null
    rm *.glg-abr 2> /dev/null
    rm *.glo-abr 2> /dev/null
    rm *.gls-abr 2> /dev/null
}

clean

rm main.pdf 2> /dev/null

#sed -i 's/\\\usepackage{.*}//g' sources/*/*.tex


texfot pdflatex main.tex
#texfot pdflatex main1.tex
#| grep "Output written on"
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
##makeglossaries main
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
##makeindex main.idx -s StyleInd.ist
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
#texfot biber main1
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
#texfot pdflatex  main1.tex | grep "Output written on"
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
##makeglossaries main1
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
##makeindex main1.idx -s StyleInd.ist
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"
#texfot pdflatex  main1.tex
##| grep "Output written on"
#echo "-------------------------------------------------------"
#echo "-------------------------------------------------------"

clean
#
#git commit -a -m  "update on pycharm"
#git pull
#git push

#tar -czf  huawei.tar.gz  *
#scp thesis.tar.gz  ncarrara@ncarrara.fr:/home/ncarrara/website/public/others/thesis.tar.gz
#scp huawei.tar.gz  ncarrara@ncarrara.fr:/home/ncarrara/website/public/others/huawei.tar.gz
#scp main.pdf  ncarrara@ncarrara.fr:/home/ncarrara/website/public/others/thesis.pdf
#scp main1.pdf  ncarrara@ncarrara.fr:/home/ncarrara/website/public/others/test.pdf


