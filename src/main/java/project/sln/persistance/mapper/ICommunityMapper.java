package project.sln.persistance.mapper;

import org.apache.ibatis.annotations.Mapper;
import project.sln.dto.CommunityDTO;


import java.util.List;

@Mapper
public interface ICommunityMapper {

    List<CommunityDTO> getCommunityList() throws Exception;

    void insertCommunityInfo(CommunityDTO pDTO) throws Exception;

    CommunityDTO getCommunityInfo(CommunityDTO pDTO) throws Exception;

    void updateCommunityReadCnt(CommunityDTO pDTO) throws Exception;

    void updateCommunityInfo(CommunityDTO pDTO) throws Exception;

    void deleteCommunityInfo(CommunityDTO pDTO) throws Exception;

}
