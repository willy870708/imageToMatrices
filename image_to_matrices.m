clear all;close all;clc;
path =  '.\data\'	%影像存檔的路徑
img_path_list = sort(dir(strcat(file_path,'*.jpg')));%將影像依順序讀取進來
img_num = length(img_path_list);                     %讀取總影像數量
test=zeros(10000,img_num);
if img_num > 0 
        for j = 1:img_num 
            image_name = img_path_list(j).name;	%依序轉換照片成陣列 
            image = image / 255;         		%將數值正規化到0~1 
            image = reshape(image,[400,1]);   %將影像從20*20轉換成400*1
            test(1:10000,j) = image(1:400,1);
        end
end
