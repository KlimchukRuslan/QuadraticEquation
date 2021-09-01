package com.test.common.dao;

import com.test.common.domain.Coefficients;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CoefficientDaoImpl implements CoefficientDao{
    @Autowired
    private SessionFactory sessionFactory;

    public void addCoefficient(Coefficients coefficients) {
        sessionFactory.getCurrentSession().save(coefficients);
    }

    @SuppressWarnings("unchecked")
    public List<Coefficients> listCoefficients() {
        return sessionFactory.getCurrentSession().createQuery("from Coefficients")
                .list();
    }

    public void removeCoefficient(Integer id) {
        Coefficients coefficient = (Coefficients) sessionFactory.getCurrentSession().load(
                Coefficients.class, id);
        if (null != coefficient) {
            sessionFactory.getCurrentSession().delete(coefficient);
        }
    }
}
