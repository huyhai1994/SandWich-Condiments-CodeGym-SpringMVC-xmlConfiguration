package vn.codegym.service.implement;

import vn.codegym.model.Condiment;
import vn.codegym.service.ICondimentService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CondimentServiceImplement implements ICondimentService {
    private final Map<Integer, Condiment> condiments;

    public CondimentServiceImplement() {
        condiments = new HashMap<>();
    }

    @Override
    public List<Condiment> findAll() {
        return new ArrayList<>(condiments.values());
    }

    @Override
    public void save(Condiment condiment) {
        int id = getId();
        condiments.put(id, condiment);
    }

    private static int getId() {
        return (int) (Math.random() * 10000);
    }
}
