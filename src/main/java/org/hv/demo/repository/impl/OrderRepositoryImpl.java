package org.hv.demo.repository.impl;

import org.hv.demo.aggregate.order.Order;
import org.hv.demo.repository.OrderRepository;
import org.hv.biscuits.repository.AbstractCommonRepository;
import org.springframework.stereotype.Component;

/**
 * @author wujianchuan
 */
@Component
public class OrderRepositoryImpl extends AbstractCommonRepository<Order> implements OrderRepository {
}
