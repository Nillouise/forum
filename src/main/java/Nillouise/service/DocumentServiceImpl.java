package Nillouise.service;

import Nillouise.dao.DocumentMapper;
import Nillouise.model.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DocumentServiceImpl implements DocumentService
{
    @Autowired
    DocumentMapper mapper;

    public boolean addDocument(Document document)
    {
        return mapper.addDocument(document)>0;
    }

    public Document selectDocument(int id)
    {
        return mapper.selectDocument(id);
    }
}
