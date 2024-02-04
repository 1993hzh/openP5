conda activate t5
python ../../src/src_t5/main.py --datasets Clothing --distributed 1 --gpu 0,1 --tasks sequential,straightforward --item_indexing random --epochs 10 --batch_size 128 --master_port 1024 --prompt_file ../prompt.txt --sample_prompt 1 --eval_batch_size 20 --dist_sampler 0 --max_his 20  --sample_num 3,3 --train 1 --test_prompt seen:0 --lr 1e-3 --test_before_train 0 --test_epoch 0
