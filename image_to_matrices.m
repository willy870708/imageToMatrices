clear all;close all;clc;
path =  '.\data\'	%�v���s�ɪ����|
img_path_list = sort(dir(strcat(file_path,'*.jpg')));%�N�v���̶���Ū���i��
img_num = length(img_path_list);                     %Ū���`�v���ƶq
test=zeros(10000,img_num);
if img_num > 0 
        for j = 1:img_num 
            image_name = img_path_list(j).name;	%�̧��ഫ�Ӥ����}�C 
            image = image / 255;         		%�N�ƭȥ��W�ƨ�0~1 
            image = reshape(image,[400,1]);   %�N�v���q20*20�ഫ��400*1
            test(1:10000,j) = image(1:400,1);
        end
end
