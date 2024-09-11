package project.sln.service;

import project.sln.dto.CommunityDTO;

import java.util.List;

public interface ICommunityService {

    List<CommunityDTO> getCommunityList() throws Exception;

    CommunityDTO getCommunityInfo(CommunityDTO pDTO, boolean type) throws Exception;

    void insertCommunityInfo(CommunityDTO pDTO) throws Exception;

    void updateCommunityInfo(CommunityDTO pDTO) throws Exception;

    void deleteCommunityInfo(CommunityDTO pDTO) throws Exception;

}
