## Hugging Face on Amazon SageMaker and AWS Workshop

You’ve just been hired by the Chicago Tribune to start a new poetry column. Congrats! The catch? You need to write a new poem every day. And it can’t just be any old string of syllables, you need it to be fresh, authentic, to resonate with the times and carry a sense of rhyme. You need it to delight your readers, to drive up the Tribune’s daily readership numbers and grow their social media presence. How are you going to accomplish this? With the help of Hugging Face and NLP models on SageMaker of course! 

In this 90-minute hands-on workshop you will use prebuilt notebooks to fine-tune text generation models in the style of your favorite poets, on Amazon SageMaker. You will customize your notebooks to generate new lines of poetry that seem promising, and publish your trained model artifact onto an S3 bucket. You will use *SageMaker training to fine-tune your models* on larger sets of data, speeding up your train time with the SageMaker Training Compiler

You will build a *multi-model endpoint on SageMaker to deploy models* with different styles of text generation, fine-tuned for different authors, and combine all of them to write different styles of poetry. Lastly, you’ll wrap your work into a *SageMaker Pipelines workflow* to push new changes to your models as new topics become more relevant. 

Additionally, we'll provide links to explain *model performance with SageMaker Clarify*, and *tune your hyper-parameters with Automatic Model Tuning.* You’ll see how to optimize your models for performance with the SageMaker *Inference Recommender*, ultimately compiling your model for enhanced inference times with SageMaker Neo. 

## Repository Structure

- `main_notebook` - The data science starting point. This is where most users will begin. You'll use Hugging Face to test, fine-tune, and deploy NLP models.
- `pipeline` - This is the MLOps starting point. If you want to learn how to build pipelines using SageMaker, this is a great notebook to step through.
- `cloud_formation` - This is the AWS admin starting point. If you want to learn how to deploy this entire workshop into new AWS accounts using yaml and Cloud Formation, this is where to go.
- `use_cases` - This is where to start if you are looking to find the right Hugging Face model and use case. We also identify 40+ notebooks built by both Hugging Face and AWS that demonstrate various aspects of Hugging Face and SageMaker together.

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This project is licensed under the Apache-2.0 License.

