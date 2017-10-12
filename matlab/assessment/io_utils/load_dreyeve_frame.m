function [ dreyeve_frame ] = load_dreyeve_frame(num_seq, num_frame)
%LOAD_DREYEVE_FRAME Load a certain frame from dreyeve dataset
%   LOAD_DREYEVE_FRAME load a dreyeve frame given the number of run in
%   range [1, 74] and the number of frame in range [1, 7500]

    dreyeve_data_root = '/majinbu/public/DREYEVE/DATA/'; % todo avoid hardcode 
    
    seq_str = sprintf('%02d', num_seq);
    frame_str = sprintf('%06d.jpg', num_frame);
    
    frame_path = fullfile(dreyeve_data_root, seq_str, 'frames', frame_str);
    
    dreyeve_frame = [];
    if exist(frame_path, 'file')
        dreyeve_frame = imread(frame_path);
    end

end

