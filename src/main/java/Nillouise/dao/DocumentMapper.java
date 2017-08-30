package Nillouise.dao;

import Nillouise.model.Document;

/**
 * Created by win7x64 on 2017/8/30.
 */
public interface DocumentMapper
{
    int addDocument(Document document);

    Document selectDocument(int id);
}
