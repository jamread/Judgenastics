function keypoints = getKeypointsFromJson(filename)
    imageJson = jsondecode(fileread(filename));
    people = imageJson.people;
    keypoints = getKeypointsFromPeople(people.pose_keypoints_2d);
end
