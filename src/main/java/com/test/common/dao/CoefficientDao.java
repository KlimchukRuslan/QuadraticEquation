package com.test.common.dao;

import java.util.List;
import com.test.common.domain.Coefficients;

public interface CoefficientDao {

    public void addCoefficient(Coefficients coefficients);

    public List<Coefficients> listCoefficients();

    public void removeCoefficient(Integer id);
}
