package com.rainya.mapper;

import com.rainya.po.SecSysResources;
import com.rainya.po.SecSysResourcesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecSysResourcesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int countByExample(SecSysResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int deleteByExample(SecSysResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String resourceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int insert(SecSysResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int insertSelective(SecSysResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    List<SecSysResources> selectByExample(SecSysResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    SecSysResources selectByPrimaryKey(String resourceId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") SecSysResources record, @Param("example") SecSysResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") SecSysResources record, @Param("example") SecSysResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(SecSysResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_resources
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(SecSysResources record);
}