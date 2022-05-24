function plot_cuboid(l, h, w)
    hold on;
    %Lines X0
    plot3([0,l],[0,0],[0,0],'k--')
    plot3([0,l],[h,h],[0,0],'k--')
    plot3([0,l],[h,h],[-w,-w],'k--')
    plot3([0,l],[0,0],[-w,-w],'k--')
    %Lines Y0
    plot3([0,0],[0,h],[0,0],'k--')
    plot3([l,l],[0,h],[0,0],'k--')
    plot3([l,l],[0,h],[-w,-w],'k--')
    plot3([0,0],[0,h],[-w,-w],'k--')
    %Lines Z0
    plot3([0,0],[0,0],[0,-w],'k--')
    plot3([l,l],[0,0],[0,-w],'k--')
    plot3([0,0],[h,h],[0,-w],'k--')
    plot3([l,l],[h,h],[0,-w],'k--')
    xlim([-1 l+1])
    ylim([-1 h+1])
    zlim([-w-1 1])
    grid on
    grid(gca,'minor')
end
