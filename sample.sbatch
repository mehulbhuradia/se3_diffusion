#!/bin/sh
#SBATCH --partition=general
#SBATCH --job-name=se3_sample
#SBATCH --qos=medium         
#SBATCH --time=36:00:00      
#SBATCH --ntasks=1         
#SBATCH --cpus-per-task=2   
#SBATCH --mem-per-cpu=256G
#SBATCH --mail-type=END     
#SBATCH --gres=gpu:turing:2

module use /opt/insy/modulefiles
module load cuda/12.2 cudnn/12-8.9.1.23 miniconda/3.10

conda activate /tudelft.net/staff-umbrella/Enzymix/se3_diffusion/se3

srun python experiments/inference_se3_diffusion.py