function [people] = getPeopleFromJson(filename)
    imageJson = jsondecode(fileread(filename));
    people = imageJson.people;
end