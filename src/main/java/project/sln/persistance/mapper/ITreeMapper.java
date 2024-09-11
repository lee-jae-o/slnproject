package project.sln.persistance.mapper;

import org.apache.ibatis.annotations.Mapper;
import project.sln.dto.TreeDTO;

@Mapper
public interface ITreeMapper {

    void insertTree(TreeDTO tree);

    TreeDTO getTreeByUserId(String userId);

    void updateTree(TreeDTO tree);
}