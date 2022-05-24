function plot_vectors(vec0a,vec0b)
    mArrow3([0,0,0],transpose(vec0a),'color','g');
    mArrow3([0;0;0],vec0b,'color','m');
end