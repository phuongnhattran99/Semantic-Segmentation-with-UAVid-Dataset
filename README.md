# Semantic-Segmentation-with-UAVid-Dataset

Dataset is splited into three small datasets, including: 400 images in training dataset, 130 in validation dataset and 10 images in testing dataset (original images and labeled images). There are eight labels for each images, consisting of: "Clutter", "Building", "Road", "StaticCar", "Tree", "Vegetation", "Human" and "MovingCar".

# Visualize the pixel counts by class
![Visualize the pixel counts by class](https://user-images.githubusercontent.com/81501596/124265426-d9f4b080-db5f-11eb-9383-ab3981edcc31.png)

# DeepLab v3+ with ResNet-18 Backbone
![DeepLab](https://user-images.githubusercontent.com/81501596/124265667-3a83ed80-db60-11eb-8079-d782d61cf2cc.png)

# Training Progress
![Training Progress](https://user-images.githubusercontent.com/81501596/124266180-d6adf480-db60-11eb-903e-ff7c78db2c5e.png)
# Result
| Training |Validation|
| --- | --- |
| `Accuracy`   | 82.34%      | 76.8557%    |
| `Loss`     | 0.3238        | 0.5620      |

  |    classes   |      iou|
  | --- | --- |
  |  "Clutter"    |    0.58494|
   | "Building"   |    0.94585|
   | "Road"       |    0.73827|
   | "StaticCar"  |    0.39415|
   | "Tree"       |    0.72758|
   | "Vegetation" |    0.22784|
   | "Human"      |   0.031362|
   | "MovingCar"  |    0.17483|

|GlobalAccuracy |   MeanAccuracy  |  MeanIoU |   WeightedIoU  |  MeanBFScore|
| --- | --- | --- | --- | --- |
|0.82527 |         0.79527 |      0.54119 |     0.74025 |       0.66845 | 
       
   |              | Accuracy   |   IoU   |    MeanBFScore|
   | --- | --- | --- | --- |
     |Clutter     |  0.65485   |   0.56601|       0.7612 |
   | Building   |   0.94011  |    0.90466   |   0.82507|  
  |  Road       |   0.82693  |    0.66057   |   0.71666 | 
   | StaticCar |    0.75424  |    0.36839   |   0.52996  |
   | Tree      |     0.8534  |     0.7856    |   0.8415 | 
  |  Vegetation |   0.65107   |  0.50528  |   0.59838 |
  | Human        | 0.83858    | 0.044986   |   0.55343 | 
  |  MovingCar   |  0.84296     | 0.49405   |   0.51921 | 
       
