package com.ureca.restaurant.model.dao;

import com.ureca.restaurant.dto.Restaurant;
import org.apache.ibatis.annotations.*;

import java.sql.SQLException;
import java.util.List;

@Mapper
public interface RestaurantDAO {
    /* 식당 추가 */
    @Insert("insert into Restaurant (id, name, address, taste, price) values (#{id}, #{name}, #{address}, #{taste}, #{price})")
    public int insert(Restaurant restaurant) throws SQLException;

    /* 식당 수정 */
    @Update("update Restaurant set name=#{name}, address=#{address}, taste=#{taste}, price=#{price} where id=#{id}")
    public int update(Restaurant restaurant) throws SQLException;

    /* 식당 삭제 */
    @Delete("delete from Restaurant where id=#{id}")
    public int delete(int id) throws SQLException;

    /* 식당 하나 조회 (수정화면 시) */
    @Select("select * from Restaurant where id=#{id}")
    public Restaurant select(int id) throws SQLException;

    /* 식당 리스트 조회 */
    @Select("select * from Restaurant order by thumbs desc, name asc")
    public List<Restaurant> selectAll() throws SQLException;

    /* 식당 추천 */
    @Update("update Restaurant set thumbs=thumbs+1 where id=#{id}")
    public int thumbsUp(int id) throws SQLException;
}
