package com.test.common.service;

import com.test.common.domain.Coefficients;

import java.util.List;

public interface CoefficientsService {

	public void addCofficent(Coefficients coefficients);

	public List<Coefficients> listCoefficients();

	public void removeCoefficients(Integer id);
}
