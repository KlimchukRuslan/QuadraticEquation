package com.test.common.service;

import com.test.common.dao.CoefficientDao;
import com.test.common.domain.Coefficients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
 
@Service
public class CoefficientsServiceImpl implements CoefficientsService {

    @Autowired
    private CoefficientDao coefficientDao;

    @Transactional
    public void addCofficent(Coefficients coefficients) {
        coefficientDao.addCoefficient(coefficients);
    }
 
    @Transactional
    public List<Coefficients> listCoefficients() {
        return coefficientDao.listCoefficients();
    }
 
    @Transactional
    public void removeCoefficients(Integer id) {
        coefficientDao.removeCoefficient(id);
    }
}
