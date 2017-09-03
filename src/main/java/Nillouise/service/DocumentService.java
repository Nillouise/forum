package Nillouise.service;

import Nillouise.model.Document;

/**
 * Created by win7x64 on 2017/9/3.
 */
public interface DocumentService
{
    boolean addDocument(Document document);
    Document selectDocument(int id);
}
