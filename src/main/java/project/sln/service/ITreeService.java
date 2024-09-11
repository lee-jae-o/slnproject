package project.sln.service;

import project.sln.dto.TreeDTO;

import java.util.List;

public interface ITreeService {

    void plantTree(TreeDTO tree);

    TreeDTO getTreeByUserId(String userId);

    void waterTree(String userId);
}
