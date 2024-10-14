import sys
import pandas as pd

run_df = pd.read_csv("file_paths.tsv", sep = "\t", header = "infer" )
demo_df = pd.read_csv("demo.tsv", sep = "\t", header= "infer")

print(demo_df)

run_df.index= run_df["run"]
demo_df.index = demo_df["demo"]
print(run_df)
print(demo_df)

def sorting_of_bed_files(wildcards):
        for_all_names= demo_df.loc[wildcards.demo, "names"].split(",")
        run_path_list=[]
        for r in for_all_names:
                p= run_df.loc[r, "file_path"]
                run_path_list.append(p)
        return run_path_list

rule sort_a_bed_file:
        input:
                all_names= lambda wildcards: sorting_of_bed_files(wildcards)
        output:
                sorted= "completed_sorting/for_{demo}.bed"
        shell:
            "sh script_for_sort/to_sort.sh \"{input.all_names}\" {output.sorted}"
