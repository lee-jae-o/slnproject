package project.sln.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.sln.dto.TreeDTO;
import project.sln.persistance.mapper.ITreeMapper;
import project.sln.service.ITreeService;

@Service
public class TreeService implements ITreeService {

    private final ITreeMapper treeMapper;

    @Autowired
    public TreeService(ITreeMapper treeMapper) {
        this.treeMapper = treeMapper;
    }

    @Override
    public void plantTree(TreeDTO tree) {
        treeMapper.insertTree(tree);
    }

    @Override
    public TreeDTO getTreeByUserId(String userId) {
        return treeMapper.getTreeByUserId(userId);
    }

    @Override
    public void waterTree(String userId) {
        TreeDTO tree = treeMapper.getTreeByUserId(userId);
        if (tree != null) {
            int currentScore = Integer.parseInt(tree.getScore());
            // 나무 성장 로직을 적용
            currentScore++;
            tree.setScore(String.valueOf(currentScore));
            treeMapper.updateTree(tree);
        }
    }
}