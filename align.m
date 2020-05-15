function aligned=align(green,red)
[red_row,red_col]=size(red);
[green_row,green_col]=size(green);
cropped_red=red(ceil((red_row-50)/2):ceil((red_row-50)/2)+50,ceil((red_col-50)/2):ceil((red_col-50)/2)+50);
cropped_green=green(ceil((green_row-50)/2):ceil((green_row-50)/2)+50,ceil((green_col-50)/2):ceil((green_col-50)/2)+50);
Min=9999999999;
rgi=0;
rgj=1;
for i=-10:10
    for j=-10:10
        ssd=SSD(cropped_green,circshift(cropped_red,[i,j]));
        if ssd<Min
            Min=ssd;
            rgi=i;
            rgj=j;
        end
    end
end
aligned=circshift(red,[rgi,rgj]);
end