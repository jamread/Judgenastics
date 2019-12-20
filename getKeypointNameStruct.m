function [pkp] = getKeypointNameStruct(varargin) 
%getAllKeypoints Get struct array of named keypoints of ID'd people
%   Probably the more useful form for determining point relationships
    if nargin==0
        pkp = [];
        return
    end
    
    pkp = struct( ...
            "Nose", varargin{1}(0*3+1:(0+1)*3), ...
            "Neck", varargin{1}(1*3+1:(1+1)*3), ...
            "RShoulder", varargin{1}(2*3+1:(2+1)*3), ...
            "RElbow", varargin{1}(3*3+1:(3+1)*3), ...
            "RWrist", varargin{1}(4*3+1:(4+1)*3), ...
            "LShoulder", varargin{1}(5*3+1:(5+1)*3), ...
            "LElbow", varargin{1}(6*3+1:(6+1)*3), ...
            "LWrist", varargin{1}(7*3+1:(7+1)*3), ...
            "MidHip", varargin{1}(8*3+1:(8+1)*3), ...
            "RHip", varargin{1}(9*3+1:(9+1)*3), ...
            "RKnee", varargin{1}(10*3+1:(10+1)*3), ...
            "RAnkle", varargin{1}(11*3+1:(11+1)*3), ...
            "LHip", varargin{1}(12*3+1:(12+1)*3), ...
            "LKnee", varargin{1}(13*3+1:(13+1)*3), ...
            "LAnkle", varargin{1}(14*3+1:(14+1)*3), ...
            "REye", varargin{1}(15*3+1:(15+1)*3), ...
            "LEye", varargin{1}(16*3+1:(16+1)*3), ...
            "REar", varargin{1}(17*3+1:(17+1)*3), ...
            "LEar", varargin{1}(18*3+1:(18+1)*3), ...
            "LBigToe", varargin{1}(19*3+1:(19+1)*3), ...
            "LSmallToe", varargin{1}(20*3+1:(20+1)*3), ...
            "LHeel", varargin{1}(21*3+1:(21+1)*3), ...
            "RBigToe", varargin{1}(22*3+1:(22+1)*3), ...
            "RSmallToe", varargin{1}(23*3+1:(23+1)*3), ...
            "RHeel", varargin{1}(24*3+1:(24+1)*3) ...
            );
        
    if nargin>1
        pkp = repmat(pkp, 1, nargin);
        for k = 2:nargin
            pkp(k) = struct( ...
                "Nose", varargin{k}(0*3+1:(0+1)*3), ...
                "Neck", varargin{k}(1*3+1:(1+1)*3), ...
                "RShoulder", varargin{k}(2*3+1:(2+1)*3), ...
                "RElbow", varargin{k}(3*3+1:(3+1)*3), ...
                "RWrist", varargin{k}(4*3+1:(4+1)*3), ...
                "LShoulder", varargin{k}(5*3+1:(5+1)*3), ...
                "LElbow", varargin{k}(6*3+1:(6+1)*3), ...
                "LWrist", varargin{k}(7*3+1:(7+1)*3), ...
                "MidHip", varargin{k}(8*3+1:(8+1)*3), ...
                "RHip", varargin{k}(9*3+1:(9+1)*3), ...
                "RKnee", varargin{k}(10*3+1:(10+1)*3), ...
                "RAnkle", varargin{k}(11*3+1:(11+1)*3), ...
                "LHip", varargin{k}(12*3+1:(12+1)*3), ...
                "LKnee", varargin{k}(13*3+1:(13+1)*3), ...
                "LAnkle", varargin{k}(14*3+1:(14+1)*3), ...
                "REye", varargin{k}(15*3+1:(15+1)*3), ...
                "LEye", varargin{k}(16*3+1:(16+1)*3), ...
                "REar", varargin{k}(17*3+1:(17+1)*3), ...
                "LEar", varargin{k}(18*3+1:(18+1)*3), ...
                "LBigToe", varargin{k}(19*3+1:(19+1)*3), ...
                "LSmallToe", varargin{k}(20*3+1:(20+1)*3), ...
                "LHeel", varargin{k}(21*3+1:(21+1)*3), ...
                "RBigToe", varargin{k}(22*3+1:(22+1)*3), ...
                "RSmallToe", varargin{k}(23*3+1:(23+1)*3), ...
                "RHeel", varargin{k}(24*3+1:(24+1)*3) ...
                );
        end
    end
end
