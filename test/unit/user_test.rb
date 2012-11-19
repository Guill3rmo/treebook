require 'test_helper'

class UserTest < ActiveSupport::TestCase
	 test "elusuario debe ingresar su pimer nombre" do
	 	user = User.new
	 	assert !user.save
	 	assert !user.errors[:first_name].empty?
	  end

	  test "el usuario debe ingresar su apellido" do
	 	user = User.new
	 	assert !user.save
	 	assert !user.errors[:last_name].empty?
	  end

	  test "el usuario debe ingresar nombre de perfil" do
	 	user = User.new
	 	assert !user.save
	 	assert !user.errors[:profile_name].empty?
	  end

	  test "el usuario a de tener un perfil unico" do
	 	user = User.new
	 	user.profile_name = users(:guillo).profile_name
	 	assert !user.save
	 	puts user.errors.inspect
	 	assert !user.errors[:profile_name].empty?
	  end

	  test "el usuario debe tener un  perfil sin espacios" do
	  	user = User.new
	  	user.profile_name = "perfil con espacios "
	  	assert !user.save
	  	assert !user.errors[:profile_name].empty?
	  	assert !user.errors[:profile_name].include?("Debe tener el formato correcto")
  	end
 

end
