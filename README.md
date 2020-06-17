# ML_Hyperparameter_Modifier
>**Requirements**:
* docker

* git

* github account

* jenkins
<br><br>
>**Steps to use**:
* Create a github repository.
<br><br>
* Clone the repository.
<br><br>
* Configure git hooks.
  * ![](Images/1.jpg)
    <br>
  
  This will push the update to github and trigger jenkins job1 once you execute commit command.
<br><br>
* Configure jenkins job1 : Pull the github repo automatically when developer push repo to github.
  * ![](Images/2_mdjob1-1.jpg)
  <br><br>
  * ![](Images/3_mdjob1-2.jpg)
  <br>

  Job 1 will download the repo locally to the system when developer push repo to github and trigger job2 once job1 executed successfully.
<br><br>  
* Create a docker image that is well suited for cnn models.
  * ![](Images/4_Dockerfile.jpg)
  <br>
  
  This dockerfile create a centos image with python installed in it with some of its libraries (keras, numpy, pandas, tensorflow).
<br><br>
* Configure jenkins job2 : By analyzing the code job2 will automatically start the best container available.
  * ![](Images/5_mdjob2-1.jpg)
  <br><br>
  * ![](Images/6_mdjob2-2.jpg)
  <br>

  Job2 will analyze the code and check if the code is related to cnn and if it is then it will start the container, copy the downloaded repo inside the container and trigger job3. 
<br><br>  
* Configure jenkins job3 : Train the model and predict the accuracy.
  * ![](Images/7_mdjob3-1.jpg)
  <br><br>
  * ![](Images/8_mdjob3-2.jpg)
  <br>

  Job3 will train the model and predict the accuracy,store the accuracy to a text file and trigger job4 once successfully executed job3.
<br><br>  
* Configure jenkins job4 : If accuracy is less than 90% it will tweak model.
  * ![](Images/9_mdjob4-1.jpg)
  <br><br>
  * ![](Images/10_mdjob4-2.jpg)
  <br>
  
  Job4 will check the accuracy, if accuracy is less than 90% it will tweak the model by changing value of epochs, by adding convlayer and by adding dense layer and after that trigger job2 otherwise trigger job5.
<br><br>
* Configure jenkins job5 : Notify that best model has been created.
  * ![](Images/11_mdjob5-1.jpg)
  <br><br>
  ![](Images/12_mdjob5-2.jpg)
  <br><br>
  * ![](Images/13_mdjob5-3.jpg)
  <br><br>
  * ![](Images/14_mdjob5-4.jpg)
  <br>
  
  Job5 will send the mail to the developer telling accuracy of the model.
<br><br>
* Configure jenkins job6 : If during execution container fails then it will restart the container.
  * ![](Images/15_mdjob6-1.jpg)
  <br>

  Job6 will watch the job3 and if at the time of training the model container fails it will trigger job2.