package com.rainya.mapper;

import com.rainya.po.SecSysAuthoritiesResources;
import com.rainya.po.SecSysAuthoritiesResourcesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SecSysAuthoritiesResourcesMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int countByExample(SecSysAuthoritiesResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int deleteByExample(SecSysAuthoritiesResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int insert(SecSysAuthoritiesResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int insertSelective(SecSysAuthoritiesResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    List<SecSysAuthoritiesResources> selectByExample(SecSysAuthoritiesResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    SecSysAuthoritiesResources selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") SecSysAuthoritiesResources record, @Param("example") SecSysAuthoritiesResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") SecSysAuthoritiesResources record, @Param("example") SecSysAuthoritiesResourcesExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(SecSysAuthoritiesResources record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sec_sys_authorities_resources
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(SecSysAuthoritiesResources record);
}