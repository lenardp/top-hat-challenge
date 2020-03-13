#!/bin/ruby

def print_material(materials)
  parent_children = {}

  # O(n)
  materials.each do |m|
    parent_id = m[:parent_id]
    parent_children[parent_id] ||= []
    parent_children[parent_id] << m
  end

  roots = parent_children[nil]

  # O(n)
  roots.each do |r|
    print_node(0, r, parent_children)
  end

  nil
end

def print_node(level, node, parent_children)
  # print parent
  string = ""
  level.times{ string << '-'}
  string << node[:name]
  puts string

  # print children
  children = parent_children[node[:id]]

  children&.each do |child|
    print_node(level+1, child, parent_children)
  end
end



input = [
	{"id": 1, "name": "US History", "parent_id": nil},
	{"id": 2, "name": "Third Assignment", "parent_id": 3},
	{"id": 3, "name": "First Chapter", "parent_id": 1},
	{"id": 4, "name": "Second Assignment", "parent_id": 1},
	{"id": 5, "name": "First Assignment", "parent_id": 6},
	{"id": 6, "name": "Canadian History", "parent_id": nil},
]
