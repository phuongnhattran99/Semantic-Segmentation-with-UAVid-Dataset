%hien thi anh
outputFolder = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder'; 
imgDir = fullfile(outputFolder,'train_resize');
imds = imageDatastore(imgDir);
I = readimage(imds,1);
I = histeq(I);
imshow(I)

%cac lop trong phan doan anh
classes = [
    "Clutter"
    "Building"
    "Road"
    "StaticCar"
    "Tree"
    "Vegetation"
    "Human"
    "MovingCar"
    ];
%gan nhan phan doan
labelIDs = UAVidPixelLabelIDs();

labelDir = fullfile(outputFolder,'label_train_resize');
pxds = pixelLabelDatastore(labelDir,classes,labelIDs);

C = readimage(pxds,1);
cmap = UAVidColorMap;
B = labeloverlay(I,C,'ColorMap',cmap);
imshow(B)
UAVidpixelLabelColorbar(cmap,classes);

%den so pixel cua moi nhan
tbl = countEachLabel(pxds)

%ve bieu do cot
frequency = tbl.PixelCount/sum(tbl.PixelCount);

bar(1:numel(classes),frequency)
xticks(1:numel(classes)) 
xticklabels(tbl.Name)
xtickangle(45)
ylabel('Frequency')

%thay doi kich thuoc anh va tao kho anh cho tap train
input_path_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train\';
output_path_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train_resize\';
cd(input_path_train)
dc =  dir('*.png'); % loads all the image infos

for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_train,output_path_train);
end

imgDir_train = fullfile(output_path_train);
imds_train = imageDatastore(imgDir_train);

%thay doi kich thuoc anh va tao kho anh cho tap label_train
input_path_label_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_train\';
output_path_label_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_train_resize\';
cd(input_path_label_train)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_label_train,output_path_label_train);
end


imgDir_label_train = fullfile(output_path_label_train);
imds_label_train = imageDatastore(imgDir_label_train);

%thay doi kich thuoc anh va tao kho anh cho tap test
input_path_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\test\';
output_path_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\test_resize\';
cd(input_path_test)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_test,output_path_test);
end

imgDir_test = fullfile(output_path_test);
imds_test = imageDatastore(imgDir_test);

%thay doi kich thuoc anh va tao kho anh cho tap label_test
input_path_label_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_test\';
output_path_label_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_test_resize\';
cd(input_path_label_test)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_label_test,output_path_label_test);
end

imgDir_label_test = fullfile(output_path_label_test);
imds_label_test = imageDatastore(imgDir_label_test);

%thay doi kich thuoc anh va tao kho anh cho tap val
input_path_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\val\';
output_path_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\val_resize\';
cd(input_path_val)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_val,output_path_val);
end
imgDir_val = fullfile(output_path_val);
imds_val = imageDatastore(imgDir_val);

%thay doi kich thuoc anh va tao kho anh cho tap label_val
input_path_label_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_val\';
output_path_label_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_val_resize\';
cd(input_path_label_val)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_label_val,output_path_label_val);
end
imgDir_label_val = fullfile(output_path_label_val);
imds_label_val = imageDatastore(imgDir_label_val);

%thay doi kich thuoc anh va tao kho anh cho tap prediction
input_path_prediction = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\prediction\';
output_path_prediction = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\prediction_resize\';
cd(input_path_prediction)
dc =  dir('*.png'); % loads all the image infos
for i = 1:numel(dc) % loop through all your images to resize
   resize_and_save(dc(i).name,input_path_prediction,output_path_prediction);
end
imgDir_prediction = fullfile(output_path_prediction);
imds_prediction = imageDatastore(imgDir_prediction);


% output_path_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train_540\';
% imgDir_train = fullfile(output_path_train);
% imds_train = imageDatastore(imgDir_train);
% output_path_label_train = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_train_540\';
% imgDir_label_train = fullfile(output_path_label_train);
% imds_label_train = imageDatastore(imgDir_label_train);
% output_path_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\test_540\';
% imgDir_test = fullfile(output_path_test);
% imds_test = imageDatastore(imgDir_test);
% output_path_label_test = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_test_540\';
% imgDir_label_test = fullfile(output_path_label_test);
% imds_label_test = imageDatastore(imgDir_label_test);
% output_path_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\val_540\';
% imgDir_val = fullfile(output_path_val);
% imds_val = imageDatastore(imgDir_val);
% output_path_label_val = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_val_540\';
% imgDir_label_val = fullfile(output_path_label_val);
% imds_label_val = imageDatastore(imgDir_label_val);
% output_path_prediction = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\prediction_540\';
% imgDir_prediction = fullfile(output_path_prediction);
% imds_prediction = imageDatastore(imgDir_prediction);



pxds_train = pixelLabelDatastore(imgDir_label_train, classes, labelIDs);
pxds_val = pixelLabelDatastore(imgDir_label_val, classes, labelIDs);
pxds_test = pixelLabelDatastore(imgDir_label_test, classes, labelIDs);


numTrainingImages = numel(imds_train.Files)
numValImages = numel(imds_val.Files)
numTestingImages = numel(imds_test.Files)

% image=imread('D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train\000000 (1).png');
% [height, width, dim] = size(image)
% Specify the network image size. This is typically the same as the traing image sizes.
imageSize = [1080 1920 3];

% Specify the number of classes.
numClasses = numel(classes);

% Create DeepLab v3+.
lgraph = deeplabv3plusLayers(imageSize, numClasses, "resnet18");

analyzeNetwork(lgraph)

imageFreq = tbl.PixelCount ./ tbl.ImagePixelCount;
classWeights = median(imageFreq) ./ imageFreq

pxLayer = pixelClassificationLayer('Name','labels','Classes',tbl.Name,'ClassWeights',classWeights);
lgraph = replaceLayer(lgraph,"classification",pxLayer);

% Define validation data.
pximds_val = pixelLabelImageDatastore(imds_val,pxds_val);

% Define training options. 
options = trainingOptions('sgdm', ...
    'LearnRateSchedule','piecewise',...
    'LearnRateDropPeriod',10,...
    'LearnRateDropFactor',0.3,...
    'Momentum',0.9, ...
    'InitialLearnRate',1e-3, ...
    'L2Regularization',0.005, ...
    'ValidationData',pximds_val,...
    'MaxEpochs',10, ...  
    'MiniBatchSize',4, ...
    'Shuffle','every-epoch', ...
    'CheckpointPath', tempdir, ...
    'VerboseFrequency',2,...
    'Plots','training-progress',...
    'ValidationPatience', 4);

augmenter = imageDataAugmenter('RandXReflection',true,...
    'RandXTranslation',[-10 10],'RandYTranslation',[-10 10]);

pximds = pixelLabelImageDatastore(imds_train,pxds_train, ...
    'DataAugmentation',augmenter);

doTraining = false;
if doTraining    
    [net, info] = trainNetwork(pximds,lgraph,options);
else
    data = load(pretrainedNetwork); 
    net = data.net;
end

I = readimage(imds_test,1);
C = semanticseg(I, net);

B = labeloverlay(I,C,'Colormap',cmap,'Transparency',0.4);
imshow(B)
UAVidpixelLabelColorbar(cmap, classes);

expectedResult = readimage(pxds_test,1);
actual = uint8(C);
expected = uint8(expectedResult);
imshowpair(actual, expected)

iou = jaccard(C,expectedResult);
table(classes,iou)

pxds_results = semanticseg(imds_test,net, ...
    'MiniBatchSize',4, ...
    'WriteLocation',tempdir, ...
    'Verbose',false);


metrics = evaluateSemanticSegmentation(pxds_results,pxds_test,'Verbose',false);

metrics.DataSetMetrics
metrics.ClassMetrics
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==================Code 'Create segmentation image folder from raw image folder '==================================================
output_path_prediction = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\prediction\';
imgDir_prediction = fullfile(output_path_prediction);
imds_prediction = imageDatastore(imgDir_prediction);

output_path_label_prediction = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\label_prediction\';


for i = 1:numel(imds_prediction) % loop through all your images to resize
    I = readimage(imds_prediction,i);
    C = semanticseg(I, net);
    B = labeloverlay(I,C,'Colormap',cmap,'Transparency',0.4);
    baseFileName = sprintf('Image #%d.png', i);
    fullFileName = fullfile(output_path_label_prediction, baseFileName);
    imwrite(yourImage, fullFileName);
end

%====================================Code Image to Video===================================================================
workingdir = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train_resize';
imageNames = dir(fullfile(workingdir,'*.png'));
imageNames = {imageNames.name}';
outputVideo = VideoWriter(fullfile(workingdir,'shuttle_out.avi'));
outputVideo.FrameRate = 40;
open(outputVideo)
for ii = 1:length(imageNames)
   img = imread(fullfile(workingdir,imageNames{ii}));
   writeVideo(outputVideo,img)
end
close(outputVideo)
shuttleAvi = VideoReader(fullfile(workingdir,'shuttle_out.avi'))

%=====================================Code Video to Image=================================================================================
shuttleVideo = VideoReader('D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train_resize\shuttle_out.avi');
workingdir = 'D:\Documents\HK201\Đề cương luận văn\Data\uavid\New folder\train_resize';
ii = 1;

while hasFrame(shuttleVideo)
   img = readFrame(shuttleVideo);
   filename = [sprintf('%03d',ii) '.png'];
   fullname = fullfile(workingdir,'images',filename);
   imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end

