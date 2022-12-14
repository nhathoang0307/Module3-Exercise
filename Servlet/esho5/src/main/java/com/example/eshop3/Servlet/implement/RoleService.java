package com.example.eshop3.Servlet.implement;

import com.example.eshop3.Model.Role;
import com.example.eshop3.Servlet.IRoleService;
import utils.AppUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleService extends DatabaseContext implements IRoleService {


    private static final String SELECT_ROLE_BY_ID = "SELECT * FROM role WHERE id =?;";
    private static final String SELECT_ALL_ROLE = "SELECT * FROM role;";

    @Override
    public Role selectRole(int id) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ROLE_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            System.out.println(this.getClass() + " selectRoleById " + preparedStatement);
            while (rs.next()) {
                int roleId = rs.getInt("id");
                String type = rs.getString("type");
                return new Role(roleId, type);
            }
        } catch (SQLException ex) {
            AppUtils.printSQLException(ex);
        }
        return null;
    }

    @Override
    public List<Role> selectAllRole() {
        List<Role> roleList = new ArrayList<>();
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ROLE);
            ResultSet rs = preparedStatement.executeQuery();
            System.out.println(this.getClass() + " selectAllRole " + preparedStatement);
            while (rs.next()){
                int id = rs.getInt("id");
                String type = rs.getString("type");
                Role role = new Role(id, type);
                roleList.add(role);
            }
        }catch (SQLException ex){
            AppUtils.printSQLException(ex);
        }

        return roleList;
    }
}
