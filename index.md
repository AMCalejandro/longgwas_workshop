---
title: "Workshop running longitudinal GWAS from Netflow's longgwas"
author: 
- name: "Alejandro Martinez-Carrasco & Michael Ta"
  affiliation: UCL & datatecnica
date: "6 November 2023"
output: 
  html_document:
    df_print: kable
    keep_md: true
---


# Worshop pre requisites
Before you can start this workshop, there are a few requisites you should meet to be able to take hands on this workshop.  

1. Have access to Ubuntu Linux distribution:
    - Access to your personal Ubuntu Linux distribution (ie Linux Ubuntu on a VM, Linux Ubuntu on WSL)
    - Access to Ubuntu Linux on a High Computing Cluster (HPC)
    - Access to Ubuntu Linux Virtual Machine in [Terra](https://amp-pd.org/).  

2. **Bash** version must be 3.2 or later in your Linux distribution

3. Java Runtime Environment **JRE** 11 or higher  
    longgwas Nextflow now makes use of the newest DSL2.
    In order to run longgwas workflows, you need to have JRE 11 or higher on your Ubuntu Linux


4. Install [docker](https://docs.docker.com/desktop/install/linux-install/) or [docker desktop](https://www.docker.com/products/docker-desktop/)  

    Nextflow runs the different processes that make up a workflow within docker containers to guarantee all workflow dependencies and versions are specified before hand. This guarantees the tool's portability making reproducibility now at hand.


5. Install [Nextflow](https://www.nextflow.io/docs/latest/getstarted.html)


6. Get [git](https://github.com/git-guides/install-git) installed in Linux Ubuntu
We need to install git so that we can copy the tool from a github remote to our local directory.  
This guarantees

7. Modify /etc/default/grub.
In order to enable Nextflow to manage memory resources within Docker containers, run the following command in your **Bash Shell**

```
GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

```

8. Clone longgwas tool in your working directory

```
git clone --single-branch --branch modularize  git@github.com:michael-ta/longitudinal-GWAS-pipeline.git
```



<br></br>
# Outline

1. Introduction to Nextflow
2. Introduction to longgwas
3. Understanding longwas components
4. Building your first nextflow process
5. Running different longitudinal GWASs using longgwas
6. Summary

