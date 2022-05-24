%%% this function is to find rotation matrix of a given euler angles
function R = rotationmatrixEULER(phi, theta, psi)
    R_z_phi=[cosd(phi),-sind(phi),0;
             sind(phi),cosd(phi),0;
             0,0,1];
    R_x_theta=[1,0,0;
               0,cosd(theta),-sind(theta);
               0,sind(theta),cosd(theta)];
    R_z_psi=[cosd(psi),-sind(psi),0;
             sind(psi),cosd(psi),0;
             0,0,1];
    R=R_z_phi* R_x_theta*R_z_psi;
end
