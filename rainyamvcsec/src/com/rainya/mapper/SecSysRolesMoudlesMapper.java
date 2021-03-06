package com.rainya.mapper;

import com.rainya.po.SecSysRolesMoudles;
import com.rainya.po.SecSysRolesMoudlesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecSysRolesMoudlesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int countByExample(SecSysRolesMoudlesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int deleteByExample(SecSysRolesMoudlesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int insert(SecSysRolesMoudles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int insertSelective(SecSysRolesMoudles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    List<SecSysRolesMoudles> selectByExample(SecSysRolesMoudlesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    SecSysRolesMoudles selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") SecSysRolesMoudles record, @Param("example") SecSysRolesMoudlesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") SecSysRolesMoudles record, @Param("example") SecSysRolesMoudlesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(SecSysRolesMoudles record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_roles_moudles
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(SecSysRolesMoudles record);
}