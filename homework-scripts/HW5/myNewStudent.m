function [newStudent] = myNewStudent(name, id, grades)
  newStudent = struct('name', name, 'id', id, 'grades', grades);
end
