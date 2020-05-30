# ML_Hyperparameter_Modifier
> **Requirements**:
* docker
* git
* github account
* jenkins

> **Steps to use**:
* **Create a github repository**

* **Clone the repository**

* **Configure git hooks**

  ![](Images/1.jpg)
  
  This will push the update to github and trigger jenkins job1 once you execute commit command.
  
* **Configure jenkins job1 : Pull the github repo automatically when developer push repo to github.**

  ![](Images/2_mdjob1-1.jpg)
  
  ![](Images/3_mdjob1-2.jpg)
  
* **Create a docker image that is well suited for cnn models.**

  ![](Images/4_Dockerfile.jpg)

* **Configure jenkins job2 : By analyzing the code job2 will automatically start the best container available.**

  ![](Images/5_mdjob2-1.jpg)
  
  ![](Images/6_mdjob2-2.jpg)
  
* **Configure jenkins job3 : Train the model and predict the accuracy.**
  
  ![](Images/7_mdjob3-1.jpg)
  
  ![](Images/8_mdjob3-2.jpg)
  
* **Configure jenkins job4 : If accuracy is less than 90% it will tweak model.**

  ![](Images/9_mdjob4-1.jpg)
  
  ![](Images/10_mdjob4-2.jpg)
  
* **Configure jenkins job5 : Notify that best model has been created.**

  ![](Images/11_mdjob5-1.jpg)
  
  ![](Images/12_mdjob5-2.jpg)
  
  ![](Images/13_mdjob5-3.jpg)
  
  ![](Images/14_mdjob5-4.jpg)
  
* **Configure jenkins job6 : If during execution container fsils then it will restart the container.**

  ![](Images/15_mdjob6-1.jpg)
