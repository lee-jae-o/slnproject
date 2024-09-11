package project.sln.service.impl;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.sln.dto.CommunityDTO;
import project.sln.persistance.mapper.ICommunityMapper;
import project.sln.service.ICommunityService;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Service
public class CommunityService implements ICommunityService {

    private final ICommunityMapper communityMapper;

    @Override
    public List<CommunityDTO> getCommunityList() throws Exception {

        log.info(this.getClass().getName() + ".getCommunityList Start!");

        return communityMapper.getCommunityList();
    }

    @Transactional
    @Override
    public CommunityDTO getCommunityInfo(CommunityDTO pDTO, boolean type) throws Exception {

        log.info(this.getClass().getName() + ".getCommunityInfo Start!");

        if (type) {
            log.info("Update ReadCnt");
            communityMapper.updateCommunityReadCnt(pDTO);
        }

        return communityMapper.getCommunityInfo(pDTO);
    }

    @Transactional
    @Override
    public void insertCommunityInfo(CommunityDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".insertCommunityInfo Start!");

        communityMapper.insertCommunityInfo(pDTO);
    }

    @Transactional
    @Override
    public void updateCommunityInfo(CommunityDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".updateCommunityInfo Start!");

        communityMapper.updateCommunityInfo(pDTO);
    }


    @Transactional
    @Override
    public void deleteCommunityInfo(CommunityDTO pDTO) throws Exception {

        log.info(this.getClass().getName() + ".deleteCommunityInfo Start!");

        communityMapper.deleteCommunityInfo(pDTO);

    }
}



























