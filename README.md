# Neural Networks

<img width = "600" src="https://github.com/victoria-yang/neural-networks-project/blob/master/network.png">


### Description
In this project, We will use the webcam data to build a neural net to predict whether or not a student is attending.

The accuracy of the neural net is also caculated in the end of the RMarkDown file.

### Prerequisites

**R Packages**
	-You will need these r packages to run this RMarkdown file.
```
install.packages("neuralnet")
install.packages("dplyr")
install.packages("caret")

```


## Datasets Info

**attention1.csv** and **attention2.csv**

These data describe features assocaited with webcam images of 100 students' faces as they particpate in an online discussion. The variables are:

* eyes - student has their eyes open (1 = yes, 0 = no)
* face.forward - student is facing the camera (1 = yes, 0 = no)
* chin.up - student's chin is raised above 45 degrees (1 = yes, 0 = no)
* attention - whether the student was paying attention when asked (1 = yes, 0 = no)


## Procedure

* Build a neural net that predicts attention based on webcam images by using *neuralnet* package
* Create predictions using neural net
* Caculate the accuracy of the prediction



## Tools
* [R](https://www.r-project.org)
* [RStudio](https://www.rstudio.com)



## Author
[Chieh-An (Victoria) Yang](https://www.linkedin.com/in/victoria-chieh-an-yang/) - Learning Analytics MS student at Teachers College, Columbia University

