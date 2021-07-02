function cmap = UAVidColorMap()
% Define the colormap used by CamVid dataset.

cmap = [
        0   0   0   %'Clutter'
    	128 0   0   %'Building'    
    	128 64  128 %'Road'   
    	192 0   192 %'Static_Car'  
    	0   128 0   %'Tree'
        128 128 0   %'Vegetation'
    	64  64  0   %'Human'    
        64  0   128 %'Moving_Car'    
    ];

% Normalize between [0 1].
cmap = cmap ./ 255;
end