package vn.codegym.service;

import vn.codegym.model.Condiment;

import java.util.List;

public interface ICondimentService {
    List<Condiment> findAll();
    void save(Condiment condiment);

}
