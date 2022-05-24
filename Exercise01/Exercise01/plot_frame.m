function plot_frame(rotation_matrix, origin, color)
    R = rotation_matrix;
    mArrow3(origin,origin+R(:,1),'color',color)
    mArrow3(origin,origin+R(:,2),'color',color)
    mArrow3(origin,origin+R(:,3),'color',color) 
end