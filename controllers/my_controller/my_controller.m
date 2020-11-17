% MATLAB controller for Webots
% File:          my_controller.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 64;

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
LF_motor = wb_robot_get_device('LF_motor');
RF_motor = wb_robot_get_device('RF_motor');
LR_motor = wb_robot_get_device('LR_motor');
RR_motor = wb_robot_get_device('RR_motor');

pivot_LF_1 = wb_robot_get_device('pivot_LF_1');
pivot_LF_2 = wb_robot_get_device('pivot_LF_2');

pivot_RF_1 = wb_robot_get_device('pivot_RF_1');
pivot_RF_2 = wb_robot_get_device('pivot_RF_2');

pivot_RR_1 = wb_robot_get_device('pivot_RR_1');
pivot_RR_2 = wb_robot_get_device('pivot_RR_2');

pivot_LR_1 = wb_robot_get_device('pivot_LR_1');
pivot_LR_2 = wb_robot_get_device('pivot_LR_2');



%wb_motor_set_position(LF_motor, inf);
%wb_motor_set_velocity(LF_motor, 1);
%wb_motor_set_position(RF_motor, inf);
%wb_motor_set_velocity(RF_motor, 1);
wb_motor_set_position(pivot_LF_1, 1.57);
wb_motor_set_velocity(pivot_LF_1, 1);
wb_motor_set_position(pivot_LF_2, -1.57);
wb_motor_set_velocity(pivot_LF_2, 1);

wb_motor_set_position(pivot_RF_1, 1.57);
wb_motor_set_velocity(pivot_RF_1, 1);
wb_motor_set_position(pivot_RF_2, -1.57);
wb_motor_set_velocity(pivot_RF_2, 1);

wb_motor_set_position(pivot_RR_1, 1.57);
wb_motor_set_velocity(pivot_RR_1, 1);
wb_motor_set_position(pivot_RR_2, -1.57);
wb_motor_set_velocity(pivot_RR_2, 1);

wb_motor_set_position(pivot_LR_1, 1.57);
wb_motor_set_velocity(pivot_LR_1, 1);
wb_motor_set_position(pivot_LR_2, -1.57);
wb_motor_set_velocity(pivot_LR_2, 1);



% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
while wb_robot_step(TIME_STEP) ~= -1





  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
