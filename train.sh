python3 -m rasa_core.train -s data/stories.md -d config/domain.yml -o models/dialogue
python3 -m rasa_nlu.train -c config/nlu_config.yml --data data/nlu.md -o models --fixed_model_name nlu --project current --verbose
#python3 -m rasa_core.train -s data/stories.md -d config/domain.yml -o models/dialogue
