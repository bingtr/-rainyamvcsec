package com.rainya.mapper;

import com.rainya.po.SecSysModules;
import com.rainya.po.SecSysModulesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecSysModulesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int countByExample(SecSysModulesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int deleteByExample(SecSysModulesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String moduleId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int insert(SecSysModules record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int insertSelective(SecSysModules record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    List<SecSysModules> selectByExample(SecSysModulesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    SecSysModules selectByPrimaryKey(String moduleId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") SecSysModules record, @Param("example") SecSysModulesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") SecSysModules record, @Param("example") SecSysModulesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(SecSysModules record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_modules
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(SecSysModules record);
}