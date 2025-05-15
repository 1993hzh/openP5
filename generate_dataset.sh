ts=500
cluster=20
for dataset in Beauty Music Steam LSC
do
    for indexing in random sequential collaborative
    do
        python ./src/generate_dataset.py --dataset ${dataset} --data_path ./data/ --item_indexing ${indexing} --tasks sequential,straightforward --prompt_file ./prompt.txt --collaborative_token_size ${ts} --collaborative_cluster ${cluster}

        python ./src/generate_dataset_eval.py --dataset ${dataset} --data_path ./data/ --item_indexing ${indexing} --tasks sequential,straightforward --prompt_file ./prompt.txt --mode validation --prompt seen:0 --collaborative_token_size ${ts} --collaborative_cluster ${cluster}

        python ./src/generate_dataset_eval.py --dataset ${dataset} --data_path ./data/ --item_indexing ${indexing} --tasks sequential,straightforward --prompt_file ./prompt.txt --mode test --prompt seen:0 --collaborative_token_size ${ts} --collaborative_cluster ${cluster}

        python ./src/generate_dataset_eval.py --dataset ${dataset} --data_path ./data/ --item_indexing ${indexing} --tasks sequential,straightforward --prompt_file ./prompt.txt --mode test --prompt unseen:0 --collaborative_token_size ${ts} --collaborative_cluster ${cluster}
    done
done
