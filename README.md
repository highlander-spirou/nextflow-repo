# Nextflow project

This project aim to learn and develop a nextflow workflow that intergrated on the cloud, with high industrial standard.

The skeleton of this nextflow project is based on the nextflow training repo: https://training.nextflow.io/basic_training/rnaseq_pipeline/

This repo contains the third part: **Run nextflow to AWS EC2**

The script contains:

```
├── main.nf → The main script to execute the rna-seq workflow
├── log_filter.py → A script to filter out the LOG.INFO in the nextflow log
├── destroy_nextflow.py → A script destroy nextflow files (for multiple runs)
├── nextflow.config → A dependency declarative file, with docker environment for each process
├── setup.sh → Install all the dependencies on EC2 instance
└── README.md
```


### Steps:

1. Create an EC2 instance
2. Install the packages (Docker, Git, Nextflow)
```bash
chmod +x setup.sh
./setup.sh
```
3. Clone the repo
```bash
mkdir app/ && cd app/
git clone <repo> . # use dot to avoid nested dir
```
