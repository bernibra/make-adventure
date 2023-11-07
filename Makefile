
results/figure.png: code/figures.R data/processed/correlation.rds code/utility.R
	Rscript code/figures.R

data/processed/correlation.rds: code/analyses.R data/processed/data.rds code/utility.R
	Rscript code/analyses.R

data/processed/data.rds: code/process_data.R data/raw/Cage.csv data/raw/Drowning.csv code/utility.R
	Rscript code/process_data.R

#target: dependencies
#	action
