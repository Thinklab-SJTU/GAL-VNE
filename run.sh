
# main.py -----> generate dataset once( --generate_vn --generate_pn), and fix the dataset

################# MIP/LP-based #################
python -W ignore main.py --solver_name="d_vne"  --num_epochs=1     --verbose=1 
python -W ignore main.py --solver_name="r_vne"  --num_epochs=1     --verbose=1 

################# Heuristics #################
# rank
python -W ignore main.py --solver_name='SimRank_MM' --num_epochs=1   --verbose=1  
python -W ignore main.py --solver_name="RW_MM"      --num_epochs=1   --verbose=1 
python -W ignore main.py --solver_name='GRC_VNE'    --num_epochs=1   --verbose=1 
python -W ignore main.py --solver_name='NRM_VNE'    --num_epochs=1   --verbose=1 

# rank bfs
python -W ignore main.py --solver_name="SimRank_BFS" --num_epochs=1  --verbose=1 
python -W ignore main.py --solver_name="RW_BFS"      --num_epochs=1  --verbose=1 


# meta-heuristic
python -W ignore main.py --solver_name="pso_vne"  --num_epochs=1   --verbose=1
python -W ignore main.py --solver_name="sa_vne"   --num_epochs=1   --verbose=1

################# ML-based #################
python main.py --solver_name="MaVEn"      --num_epochs=1   --verbose=1 
python main.py --solver_name="Neuro_ViNE" --num_epochs=1   --verbose=1 

################# RL-based #################
python -W ignore main.py --solver_name="pg_cnn" --num_epochs=1    --num_pretrain_epochs=30   --verbose=1 --cuda_id 0  --decode_strategy="greedy" --eval_interval 9999
python -W ignore main.py --solver_name="CDRL"   --num_epochs=1    --num_pretrain_epochs=30   --verbose=1 --cuda_id 0
python -W ignore main.py --solver_name="RL_VNE" --num_epochs=1    --num_pretrain_epochs=30   --verbose=1 --cuda_id 0

##########################################################
#######     GAL-VNE
##########################################################

# GAL: 
python -W ignore main.py --solver_name="gal_vne"  --hidden_dim 64 --embedding_dim 64 \
     --pretrain_batch_size 100 --batch_size 100 --lr 1e-3 --weight_decay 0.0 --num_layers 2 --dropout_prob 0.0 \
     --num_pretrain_epochs=20 --num_train_epochs=0 --num_epochs=1 \
     --learnable=2 --prefix "both" \
     --l2reg_rate=1e-1 --visit_depth 10 \
     --verbose=1 --cuda_id 0

# GAL w/o RL
python -W ignore main.py --solver_name="gal_vne"  --hidden_dim 64 --embedding_dim 64 \
     --pretrain_batch_size 100 --batch_size 100 --lr 1e-3 --weight_decay 0.0 --num_layers 2 \
     --num_pretrain_epochs=10 --num_train_epochs=0 --num_epochs=1 \
     --learnable=2 --prefix "both" \
     --l2reg_rate=1.0 --visit_depth 10 \
     --verbose=1 --cuda_id 0

# GAL w/o reg + w/o RL
python -W ignore main.py --solver_name="gal_vne"  --hidden_dim 64 --embedding_dim 64 \
     --pretrain_batch_size 100 --batch_size 100 --lr 1e-3 --weight_decay 0.0 --num_layers 2 \
     --num_pretrain_epochs=10 --num_train_epochs=0 --num_epochs=1 \
     --learnable=2 --prefix "both" \
     --l2reg_rate=0 --visit_depth 10 \
     --verbose=1 --cuda_id 0


##########################################################
#######            Our Solvers (RL Solvers as Base)
##########################################################
# PG-CNN
python -W ignore main.py --solver_name="pg_cnn"   --num_epochs=1    --num_pretrain_epochs=0   --num_train_epochs=30  --decode_strategy="greedy" \
     --rl_mode --update_algo="pg"  --rl_gamma 0.99 --max_grad_norm 2.0 --reward_type="mstep" \
     --target_steps 500 --batch_size 250 \
     --pretrained_model_path=${Trained_Model_Path} \
     --verbose=1 --cuda_id 0

# CDRL
python -W ignore main.py --solver_name="CDRL"   --num_epochs=1  --num_pretrain_epochs=0  --num_train_epochs=30 \
     --rl_mode --update_algo="pg"  --rl_gamma 0.99 --max_grad_norm 2.0 --reward_type="mstep" \
     --target_steps 500 --batch_size 250 \
     --pretrained_model_path=${Trained_Model_Path} \
     --verbose=1 --cuda_id 0

# RL_VNE
python -W ignore main.py --solver_name="RL_VNE" --num_epochs=1 --num_pretrain_epochs=0  --num_train_epochs=30  --decode_strategy="greedy" \
     --rl_mode --update_algo="pg"  --rl_gamma 0.99 --max_grad_norm 2.0 --reward_type="mstep" \
     --target_steps 500 --batch_size 250 \
     --pretrained_model_path=${Trained_Model_Path} \
     --verbose=1 --cuda_id 0


