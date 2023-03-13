clear all; clc;

%SAMPLE PLATE SPECIFICATIONS
%         1K-3K 2ST-2ST 23K-23K 1ST-1ST 3K-3K 2ST-2FG 2FG-2FG
length = [10.375; 10.375; 10.25; 8.825; 8.0; 10.25; 10.375]; %inches
width =  [5.25; 6.2; 5.275; 5.25; 1.5; 5.775; 6.25]; % inches
thick =  [.215; .219; .2385; .215; .225; .214; .2195]; % inches
weight = [25; 33; 55; 14; 8; 31; 33]; % grams

volume = length.*width.*thick; % in^3

density_g_in3 = weight./volume

%MISCELLENEOUS PARAMETERS/ESTIMATES
balsa_density = 2.29419; %g/in^3
balsa_volume = .2*3*5; %in^3
balsa_weight = balsa_density*balsa_volume;

epoxy_joint_wt_est = 50; %grams

%FUSELAGE PLATE VOLUMES (From NX geometry)
%             bottom    top      left    right
fuse_volume = [27.0727; 27.0727; 23.751; 23.751]; % in^3

%FINAL WEIGHTS---PLAY AROUND WITH THINGS HERE!
%                v modify
bottom_weight = density_g_in3(5).*fuse_volume(1) %grams

               %vvv avg-ing 2ST-2ST and 1ST-1ST to get 2ST-1ST
top_weight = ((density_g_in3(4)+density_g_in3(2))./2).*fuse_volume(2) %grams
%               v modify
left_weight = density_g_in3(2).*fuse_volume(3)
%               v modify
right_weight = density_g_in3(2).*fuse_volume(3)

total_weight = bottom_weight + top_weight + left_weight + right_weight...
    + balsa_weight + epoxy_joint_wt_est %grams
total_weight_lbs = total_weight./453.6 %pounds


