Hello sir, Dharneesh here.

**Instructions for PROJ 01: Quick_bed_sort**

1. first files nameing **demo.tsv** and **file_paths.tsv** were created to read the file paths of the bed file.
2.a linux command was used to create files for shuf.a/shuf.b.bed.gz files.
3. Then a python program with snakemake rules were written to run through the file and put them in to seperate files.
4. the sh file under the snakemake took care of the sorting part

**To run the program:**
   
6. A script file named "quick_sort.sh" was created with all the neccessary programs, which also has the python program included inside it.
7. The snakemake file  used is "smt.smk"
7.and a folder called "script_for_sort" was created tp save the **sh** file named "to_sort.sh"
8. "quick_sort.sh" was activated using chmod +x and the script is run to get the O/P.
