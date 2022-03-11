## Hugging Face on Amazon SageMaker and AWS Workshop

You’ve just been hired by the Chicago Tribune to start a new poetry column. Congrats! The catch? You need to write a new poem every day. And it can’t just be any old string of syllables, you need it to be fresh, authentic, to resonate with the times and carry a sense of rhyme. You need it to delight your readers, to drive up the Tribune’s daily readership numbers and grow their social media presence. How are you going to accomplish this? With the help of Hugging Face and NLP models on SageMaker of course! 

In this 90-minute hands-on workshop you will use prebuilt notebooks to fine-tune text generation models in the style of your favorite poets, on Amazon SageMaker. You will customize your notebooks to generate new lines of poetry that seem promising, and publish your trained model artifact onto an S3 bucket. You will use *SageMaker training to fine-tune your models* on larger sets of data, speeding up your train time with the SageMaker Training Compiler

You will build a *multi-model endpoint on SageMaker to deploy models* with different styles of text generation, fine-tuned for different authors, and combine all of them to write different styles of poetry. Lastly, you’ll wrap your work into a *SageMaker Pipelines workflow* to push new changes to your models as new topics become more relevant. 

Additionally, we'll provide links to explain *model performance with SageMaker Clarify*, and *tune your hyper-parameters with Automatic Model Tuning.* You’ll see how to optimize your models for performance with the SageMaker *Inference Recommender*, ultimately compiling your model for enhanced inference times with SageMaker Neo. 

## Repository Structure

- `main_notebook` - The data science starting point. This is where most users will begin. You'll use Hugging Face to test, fine-tune, and deploy NLP models. We'll use SageMaker Training Compiler to speed up our model, running on one ml.p3.2xlarge instance equipped with one NVIDIA V100. This training job should take ~15 minutes under current settings, with just a few epochs.
- `pipeline` - This is the MLOps starting point. If you want to learn how to build pipelines using SageMaker, this is a great notebook to step through.
- `cloud_formation` - This is the AWS admin starting point. If you want to learn how to deploy this entire workshop into new AWS accounts using yaml and Cloud Formation, this is where to go.
- `use_cases` - This is where to start if you are looking to find the right Hugging Face model and use case. We also identify 40+ notebooks built by both Hugging Face and AWS that demonstrate various aspects of Hugging Face and SageMaker together.
- `endpoint` - This is where to go if you want to focus on the endpoints. Here we are deploying two endpoints. One is a multi-model endpoint to host a variety of GPT-2 fine-tuned poetry generator models. The other is a GPT-J 6B model hosted on a single endpoint. Both of these can be accomplished without GPU's, however we note that performance tends to increase with hardware upgrades, and as such typically recommend GPU for NLP model hosting as much as possible. 

## Get started
If you are in an AWS-hosted workshop, please follow the steps provided by your workshop team. If you are stepping through this by yourself, [click here to download the tentire infrastructure via CloudFormation!](https://us-east-1.console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/create/review?templateURL=https://nlp-workshop-models.s3.us-east-1.amazonaws.com/templates/nlp-workshop-stack.yaml&stackName=PoetryOfNLP) 


## Use a Text Classifier for "Adversarial" Approaches
While the focus of this workshop is on text generation, we also wanted to highlight another key aspect of NLP, text classification. Towards that end we've trained and have deployed onto the HF Hub our very own classifier, `anne_bradstreet`. Specifically this model is a binary classifier trained to know the difference between genuine text written by Anne Bradsteet, the first published writer out of North America and the subject of our workshop, vs text generated by a generic GPT-2 model conditioned on prompts written by Bradsteet. You can [see our model hosted on the HF Hub here](https://huggingface.co/edubz/anne_bradstreet).

## What about other NLP use cases?
If you're not that interested in text generation, and maybe would instead to prefer focusing on other NLP use cases like named entity recognition, question answering, text classification, translation, or anything else, please go ahead and [look at our notebook on the topic here](https://github.com/aws-samples/hugging-face-workshop/blob/main/use_cases/Pick_the_right_HF_model.ipynb).

## Where to go from here?
If you've made it to the end of the workshop and are wondering what's next, consider looking at [the new O'Reilly book *Natural Language Processing with Transformers* by the Hugging Face team.](https://www.amazon.com/Natural-Language-Processing-Transformers-Applications/dp/1098103246/ref=sr_1_3?crid=1U6AVYBVZNY07&keywords=natural+language+processing+with+transformers&qid=1642008897&sprefix=natural+language+processing+%2Caps%2C148&sr=8-3) This does a great job recapping many of the topics you've learned here, exploring them in even more detail, and applying on an even greater variety of scenarios.

Enjoy!

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This project is licensed under the Apache-2.0 License.

