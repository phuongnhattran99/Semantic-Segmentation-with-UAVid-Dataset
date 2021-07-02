function[]=resize_and_save(dc,input_path,output_path)
%load image
image=imread(horzcat(input_path, dc));
%resize image
newimage=imresize(image,[1080 1920]);
%save new image
imwrite(newimage,horzcat(output_path, dc))
