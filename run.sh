#!/bin/sh
#SBATCH -o logs/clear-%j.out
#SBATCH --nodes=1
#SBATCH --gpus=1
#SBATCH --time=15:00:00
#SBATCH --gres=gpumem:8G
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=8G
#SBATCH --mail-type=END,FAIL

python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/ImmuneAtlas.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname cell_type

# python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/ImmHuman.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname CellType

# python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/Lung.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname cell_type

# python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/MCA.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname CellType

# python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/Pancreas.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname celltype

# python CLEAR.py --input_h5ad_path="/cluster/home/oovcharenko/Olga_Data/PBMC.h5ad" --epochs 100 --lr 0.01 --batch_size 512 --pcl_r 1024 --cos --gpu 0 --obs_label_colname CellType

