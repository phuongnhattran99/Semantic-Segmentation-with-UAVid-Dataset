# Semantic-Segmentation-with-UAVid-Dataset

Dataset is splited into three small datasets, including: 400 images in training dataset, 130 in validation dataset and 10 images in testing dataset (original images and labeled images). There are eight labels for each images, consisting of: "Clutter", "Building", "Road", "StaticCar", "Tree", "Vegetation", "Human" and "MovingCar".

# Visualize the pixel counts by class
<img src="https://user-images.githubusercontent.com/81501596/124265426-d9f4b080-db5f-11eb-9383-ab3981edcc31.png" width="750" height="375">


# DeepLab v3+ with ResNet-18 Backbone
<img src="https://user-images.githubusercontent.com/81501596/124912765-87603c00-e018-11eb-9d05-4211224367e8.png" width="750" height="375">


# Training Progress
<img src="https://user-images.githubusercontent.com/81501596/124912808-947d2b00-e018-11eb-89f6-a4cb115409b1.png" width="750" height="375">


# Result
| Training |Validation|
| :---: | :---: |
| `Accuracy`   | 82.34%      | 76.8557%    |
| `Loss`     | 0.3238        | 0.5620      |

  |    Classes   |      IoU|
  | :---: | :---: |
  |  `Clutter`    |    0.58494|
   | `Building`   |    0.94585|
   | `Road`       |    0.73827|
   | `StaticCar`  |    0.39415|
   | `Tree`       |    0.72758|
   | `Vegetation` |    0.22784|
   | `Human`      |   0.031362|
   | `MovingCar`  |    0.17483|

|GlobalAccuracy |   MeanAccuracy  |  MeanIoU |   WeightedIoU  |  MeanBFScore|
| :---: | :---: | :---: | :---: | :---: |
|0.82527 |         0.79527 |      0.54119 |     0.74025 |       0.66845 | 
       
|     Classes          | Accuracy   |   IoU   |    MeanBFScore |
| :---: | :---: | :---: | :---: |
|`Clutter`     |  0.65485   |   0.56601|       0.7612 |
| `Building`   |   0.94011  |    0.90466   |   0.82507|  
|  `Road`       |   0.82693  |    0.66057   |   0.71666 | 
| `StaticCar` |    0.75424  |    0.36839   |   0.52996  |
| `Tree`      |     0.8534  |     0.7856    |   0.8415 | 
|  `Vegetation` |   0.65107   |  0.50528  |   0.59838 |
| `Human`        | 0.83858    | 0.044986   |   0.55343 | 
|  `MovingCar`   |  0.84296     | 0.49405   |   0.51921 | 
       
# Plot Images
Original Image

<img src="https://user-images.githubusercontent.com/81501596/124268868-52f60700-db64-11eb-82cd-bfa084ce406b.png" width="750" height="375">

Labeled Image

<img src="https://user-images.githubusercontent.com/81501596/124268960-75882000-db64-11eb-8cff-04da89fff139.png" width="750" height="375">

Predicted Image 

<img src="https://user-images.githubusercontent.com/81501596/124269194-c730aa80-db64-11eb-8136-fe3949442c2d.png" width="750" height="375">

Compare Predicted Image with the expected ground truth Image (The green and purple regions highlight areas where the segmentation results differ from the expected ground truth)

<img src="https://user-images.githubusercontent.com/81501596/124270451-6bffb780-db66-11eb-9c58-815c27b5e0db.png" width="750" height="375">






